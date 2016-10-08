(*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2004-2015 Andrey Korotaev <unC0Rr@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 2 of the License
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 *)

{$INCLUDE "options.inc"}

unit uSound;
(*
 * This unit controls the sounds and music of the game.
 * Doesn't really do anything if isSoundEnabled = false and isMusicEnabled = false
 *
 * There are three basic types of sound controls:
 *    Music        - The background music of the game:
 *                   * will only be played if isMusicEnabled = true
 *                   * can be started, changed, paused and resumed
 *    Sound        - Can be started and stopped
 *    Looped Sound - Subtype of sound: plays in a loop using a
 *                   "channel", of which the id is returned on start.
 *                   The channel id can be used to stop a specific sound loop.
 *)
interface
uses SDLh, uConsts, uTypes;

procedure preInitModule;
procedure initModule;
procedure freeModule;

procedure InitSound;                            // Initiates sound-system if isSoundEnabled.
procedure ReleaseSound(complete: boolean);      // Releases sound-system and used resources.
procedure ResetSound;                           // Reset sound state to the previous state.
procedure SetSound(enabled: boolean);           // Enable/disable sound-system and backup status.

// MUSIC

// Obvious music commands for music track
procedure SetMusic(enabled: boolean);           // Enable/disable music.
procedure SetMusicName(musicname: shortstring); // Set name of the file to play.
procedure PlayMusic;                            // Play music from the start.
procedure PauseMusic;                           // Pause music.
procedure ResumeMusic;                          // Resume music from pause point.
procedure ChangeMusic(musicname: shortstring);  // Replaces music track with musicname and plays it.
procedure StopMusic;                            // Stops and releases the current track.


// SOUNDS

// Plays the sound snd [from a given voicepack],
// if keepPlaying is given and true,
// then the sound's playback won't be interrupted if asked to play again.
procedure PlaySound(snd: TSound);
procedure PlaySound(snd: TSound; keepPlaying: boolean);
procedure PlaySoundV(snd: TSound; voicepack: PVoicepack);
procedure PlaySoundV(snd: TSound; voicepack: PVoicepack; keepPlaying: boolean);

// Plays sound snd [of voicepack] in a loop, but starts with fadems milliseconds of fade-in.
// Returns sound channel of the looped sound.
function  LoopSound(snd: TSound): LongInt;
function  LoopSound(snd: TSound; fadems: LongInt): LongInt;
function  LoopSoundV(snd: TSound; voicepack: PVoicepack): LongInt;
function  LoopSoundV(snd: TSound; voicepack: PVoicepack; fadems: LongInt): LongInt;

// Stops the normal/looped sound of the given type/in the given channel
// [with a fade-out effect for fadems milliseconds].
procedure StopSound(snd: TSound);
procedure StopSoundChan(chn: LongInt);
procedure StopSoundChan(chn, fadems: LongInt);

procedure AddVoice(snd: TSound; voicepack: PVoicepack);
procedure PlayNextVoice;


// GLOBAL FUNCTIONS

// Drastically lower the volume when we lose focus (and restore the previous value).
procedure DampenAudio;
procedure UndampenAudio;

// Mute/Unmute audio
procedure MuteAudio;


// MISC

// Set the initial volume
procedure SetVolume(vol: LongInt);

// Modifies the sound volume of the game by voldelta and returns the new volume level.
function  ChangeVolume(voldelta: LongInt): LongInt;

// Returns a pointer to the voicepack with the given name.
function  AskForVoicepack(name: shortstring): Pointer;

var MusicFN: shortstring; // music file name
    SDMusicFN: shortstring; // SD music file name

var Volume: LongInt;
    SoundTimerTicks: Longword;
implementation
uses uVariables, uConsole, uCommands, uChat, uUtils, uDebug, uPhysFSLayer;

const chanTPU = 32;
var cInitVolume: LongInt;
    previousVolume: LongInt; // cached volume value
    lastChan: array [TSound] of LongInt;
    voicepacks: array[0..cMaxTeams] of TVoicepack;
    defVoicepack: PVoicepack;
    Mus: PMixMusic; // music pointer
    isMusicEnabled: boolean;
    isSoundEnabled: boolean;
    isSEBackup: boolean;
    VoiceList : array[0..7] of TVoice =  (
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil),
                    ( snd: sndNone; voicepack: nil));
    Soundz: array[TSound] of record
            FileName: string[31];
            Path, AltPath    : TPathType;
            end = (
            (FileName:                         ''; Path: ptNone; AltPath: ptNone),// sndNone
            (FileName:        'grenadeimpact.ogg'; Path: ptSounds; AltPath: ptNone),// sndGrenadeImpact
            (FileName:            'explosion.ogg'; Path: ptSounds; AltPath: ptNone),// sndExplosion
            (FileName:         'throwpowerup.ogg'; Path: ptSounds; AltPath: ptNone),// sndThrowPowerUp
            (FileName:         'throwrelease.ogg'; Path: ptSounds; AltPath: ptNone),// sndThrowRelease
            (FileName:               'splash.ogg'; Path: ptCurrTheme; AltPath: ptSounds),// sndSplash
            (FileName:        'shotgunreload.ogg'; Path: ptSounds; AltPath: ptNone),// sndShotgunReload
            (FileName:          'shotgunfire.ogg'; Path: ptSounds; AltPath: ptNone),// sndShotgunFire
            (FileName:          'graveimpact.ogg'; Path: ptSounds; AltPath: ptNone),// sndGraveImpact
            (FileName:           'mineimpact.ogg'; Path: ptSounds; AltPath: ptNone),// sndMineImpact
            (FileName:             'minetick.ogg'; Path: ptSounds; AltPath: ptNone),// sndMineTicks
            (FileName:             'Droplet1.ogg'; Path: ptSounds; AltPath: ptNone),// sndMudballImpact
            (FileName:           'pickhammer.ogg'; Path: ptSounds; AltPath: ptNone),// sndPickhammer
            (FileName:                  'gun.ogg'; Path: ptSounds; AltPath: ptNone),// sndGun
            (FileName:                  'bee.ogg'; Path: ptSounds; AltPath: ptNone),// sndBee
            (FileName:                'Jump1.ogg'; Path: ptVoices; AltPath: ptNone),// sndJump1
            (FileName:                'Jump2.ogg'; Path: ptVoices; AltPath: ptNone),// sndJump2
            (FileName:                'Jump3.ogg'; Path: ptVoices; AltPath: ptNone),// sndJump3
            (FileName:               'Yessir.ogg'; Path: ptVoices; AltPath: ptNone),// sndYesSir
            (FileName:                'Laugh.ogg'; Path: ptVoices; AltPath: ptNone),// sndLaugh
            (FileName:            'Illgetyou.ogg'; Path: ptVoices; AltPath: ptNone),// sndIllGetYou
            (FileName:          'Justyouwait.ogg'; Path: ptVoices; AltPath: ptNone),// sndJustyouwait
            (FileName:             'Incoming.ogg'; Path: ptVoices; AltPath: ptNone),// sndIncoming
            (FileName:               'Missed.ogg'; Path: ptVoices; AltPath: ptNone),// sndMissed
            (FileName:               'Stupid.ogg'; Path: ptVoices; AltPath: ptNone),// sndStupid
            (FileName:           'Firstblood.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirstBlood
            (FileName:               'Boring.ogg'; Path: ptVoices; AltPath: ptNone),// sndBoring
            (FileName:               'Byebye.ogg'; Path: ptVoices; AltPath: ptNone),// sndByeBye
            (FileName:             'Sameteam.ogg'; Path: ptVoices; AltPath: ptNone),// sndSameTeam
            (FileName:               'Nutter.ogg'; Path: ptVoices; AltPath: ptNone),// sndNutter
            (FileName:       'Reinforcements.ogg'; Path: ptVoices; AltPath: ptNone),// sndReinforce
            (FileName:              'Traitor.ogg'; Path: ptVoices; AltPath: ptNone),// sndTraitor
            (FileName:      'Youllregretthat.ogg'; Path: ptVoices; AltPath: ptNone),// sndRegret
            (FileName:            'Enemydown.ogg'; Path: ptVoices; AltPath: ptNone),// sndEnemyDown
            (FileName:               'Coward.ogg'; Path: ptVoices; AltPath: ptNone),// sndCoward
            (FileName:                'Hurry.ogg'; Path: ptVoices; AltPath: ptNone),// sndHurry
            (FileName:              'Watchit.ogg'; Path: ptVoices; AltPath: ptNone),// sndWatchIt
            (FileName:             'Kamikaze.ogg'; Path: ptVoices; AltPath: ptNone),// sndKamikaze
            (FileName:                'cake2.ogg'; Path: ptSounds; AltPath: ptNone),// sndCake
            (FileName:                  'Ow1.ogg'; Path: ptVoices; AltPath: ptNone),// sndOw1
            (FileName:                  'Ow2.ogg'; Path: ptVoices; AltPath: ptNone),// sndOw2
            (FileName:                  'Ow3.ogg'; Path: ptVoices; AltPath: ptNone),// sndOw3
            (FileName:                  'Ow4.ogg'; Path: ptVoices; AltPath: ptNone),// sndOw4
            (FileName:           'Firepunch1.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirepunch1
            (FileName:           'Firepunch2.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirepunch2
            (FileName:           'Firepunch3.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirepunch3
            (FileName:           'Firepunch4.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirepunch4
            (FileName:           'Firepunch5.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirepunch5
            (FileName:           'Firepunch6.ogg'; Path: ptVoices; AltPath: ptNone),// sndFirepunch6
            (FileName:                'Melon.ogg'; Path: ptVoices; AltPath: ptNone),// sndMelon
            (FileName:              'Hellish.ogg'; Path: ptSounds; AltPath: ptNone),// sndHellish
            (FileName:               'Yoohoo.ogg'; Path: ptSounds; AltPath: ptNone),// sndYoohoo
            (FileName:              'rcplane.ogg'; Path: ptSounds; AltPath: ptNone),// sndRCPlane
            (FileName:            'whipcrack.ogg'; Path: ptSounds; AltPath: ptNone),// sndWhipCrack
            (FileName:'ride_of_the_valkyries.ogg'; Path: ptSounds; AltPath: ptNone),// sndRideOfTheValkyries
            (FileName:               'denied.ogg'; Path: ptSounds; AltPath: ptNone),// sndDenied
            (FileName:               'placed.ogg'; Path: ptSounds; AltPath: ptNone),// sndPlaced
            (FileName:          'baseballbat.ogg'; Path: ptSounds; AltPath: ptNone),// sndBaseballBat
            (FileName:                'steam.ogg'; Path: ptSounds; AltPath: ptNone),// sndVaporize
            (FileName:                 'warp.ogg'; Path: ptSounds; AltPath: ptNone),// sndWarp
            (FileName:          'suddendeath.ogg'; Path: ptSounds; AltPath: ptNone),// sndSuddenDeath
            (FileName:               'mortar.ogg'; Path: ptSounds; AltPath: ptNone),// sndMortar
            (FileName:         'shutterclick.ogg'; Path: ptSounds; AltPath: ptNone),// sndShutter
            (FileName:              'homerun.ogg'; Path: ptSounds; AltPath: ptNone),// sndHomerun
            (FileName:              'molotov.ogg'; Path: ptSounds; AltPath: ptNone),// sndMolotov
            (FileName:            'Takecover.ogg'; Path: ptVoices; AltPath: ptNone),// sndCover
            (FileName:                'Uh-oh.ogg'; Path: ptVoices; AltPath: ptNone),// sndUhOh
            (FileName:                 'Oops.ogg'; Path: ptVoices; AltPath: ptNone),// sndOops
            (FileName:                 'Nooo.ogg'; Path: ptVoices; AltPath: ptNone),// sndNooo
            (FileName:                'Hello.ogg'; Path: ptVoices; AltPath: ptNone),// sndHello
            (FileName:             'ropeshot.ogg'; Path: ptSounds; AltPath: ptNone),// sndRopeShot
            (FileName:           'ropeattach.ogg'; Path: ptSounds; AltPath: ptNone),// sndRopeAttach
            (FileName:          'roperelease.ogg'; Path: ptSounds; AltPath: ptNone),// sndRopeRelease
            (FileName:            'switchhog.ogg'; Path: ptSounds; AltPath: ptNone),// sndSwitchHog
            (FileName:              'Victory.ogg'; Path: ptVoices; AltPath: ptNone),// sndVictory
            (FileName:             'Flawless.ogg'; Path: ptVoices; AltPath: ptNone),// sndFlawless
            (FileName:         'sniperreload.ogg'; Path: ptSounds; AltPath: ptNone),// sndSniperReload
            (FileName:                'steps.ogg'; Path: ptSounds; AltPath: ptNone),// sndSteps
            (FileName:           'lowgravity.ogg'; Path: ptSounds; AltPath: ptNone),// sndLowGravity
            (FileName:           'hell_growl.ogg'; Path: ptSounds; AltPath: ptNone),// sndHellishImpact1
            (FileName:            'hell_ooff.ogg'; Path: ptSounds; AltPath: ptNone),// sndHellishImpact2
            (FileName:              'hell_ow.ogg'; Path: ptSounds; AltPath: ptNone),// sndHellishImpact3
            (FileName:             'hell_ugh.ogg'; Path: ptSounds; AltPath: ptNone),// sndHellishImpact4
            (FileName:          'melonimpact.ogg'; Path: ptSounds; AltPath: ptNone),// sndMelonImpact
            (FileName:             'Droplet1.ogg'; Path: ptCurrTheme; AltPath: ptSounds),// sndDroplet1
            (FileName:             'Droplet2.ogg'; Path: ptCurrTheme; AltPath: ptSounds),// sndDroplet2
            (FileName:             'Droplet3.ogg'; Path: ptCurrTheme; AltPath: ptSounds),// sndDroplet3
            (FileName:                  'egg.ogg'; Path: ptSounds; AltPath: ptNone),// sndEggBreak
            (FileName:             'drillgun.ogg'; Path: ptSounds; AltPath: ptNone),// sndDrillRocket
            (FileName:          'PoisonCough.ogg'; Path: ptVoices; AltPath: ptNone),// sndPoisonCough
            (FileName:           'PoisonMoan.ogg'; Path: ptVoices; AltPath: ptNone),// sndPoisonMoan
            (FileName:             'BirdyLay.ogg'; Path: ptSounds; AltPath: ptNone),// sndBirdyLay
            (FileName:              'Whistle.ogg'; Path: ptSounds; AltPath: ptNone),// sndWhistle
            (FileName:             'beewater.ogg'; Path: ptSounds; AltPath: ptNone),// sndBeeWater
            (FileName:                   '1C.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano0
            (FileName:                   '2D.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano1
            (FileName:                   '3E.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano2
            (FileName:                   '4F.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano3
            (FileName:                   '5G.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano4
            (FileName:                   '6A.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano5
            (FileName:                   '7B.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano6
            (FileName:                   '8C.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano7
            (FileName:                   '9D.ogg'; Path: ptSounds; AltPath: ptNone),// sndPiano8
            (FileName:                 'skip.ogg'; Path: ptCurrTheme; AltPath: ptSounds),// sndSkip
            (FileName:              'sinegun.ogg'; Path: ptSounds; AltPath: ptNone),// sndSineGun
            (FileName:                'Ooff1.ogg'; Path: ptVoices; AltPath: ptNone),// sndOoff1
            (FileName:                'Ooff2.ogg'; Path: ptVoices; AltPath: ptNone),// sndOoff2
            (FileName:                'Ooff3.ogg'; Path: ptVoices; AltPath: ptNone),// sndOoff3
            (FileName:               'hammer.ogg'; Path: ptSounds; AltPath: ptNone),// sndWhack
            (FileName:           'Comeonthen.ogg'; Path: ptVoices; AltPath: ptNone),// sndComeonthen
            (FileName:            'parachute.ogg'; Path: ptSounds; AltPath: ptNone),// sndParachute
            (FileName:                 'bump.ogg'; Path: ptSounds; AltPath: ptNone),// sndBump
            (FileName:            'hogchant3.ogg'; Path: ptSounds; AltPath: ptNone),// sndResurrector
            (FileName:                'plane.ogg'; Path: ptSounds; AltPath: ptNone),// sndPlane
            (FileName:               'TARDIS.ogg'; Path: ptSounds; AltPath: ptNone),// sndTardis
            (FileName:    'frozen_hog_impact.ogg'; Path: ptSounds; AltPath: ptNone),// sndFrozenHogImpact
            (FileName:             'ice_beam.ogg'; Path: ptSounds; AltPath: ptNone),// sndIceBeam
            (FileName:           'hog_freeze.ogg'; Path: ptSounds; AltPath: ptNone), // sndHogFreeze
            (FileName:       'airmine_impact.ogg'; Path: ptSounds; AltPath: ptNone),// sndAirMineImpact
            (FileName:         'knife_impact.ogg'; Path: ptSounds; AltPath: ptNone),// sndKnifeImpact
            (FileName:            'extratime.ogg'; Path: ptSounds; AltPath: ptNone) // sndExtraTime
            );


function  AskForVoicepack(name: shortstring): Pointer;
var i: Longword;
    locName, path: shortstring;
begin
    i:= 0;

    // Adjust voicepack name if there's a localised version version of the voice
    if cLocale <> 'en' then
        begin
        locName:= name+'_'+cLocale;
        path:= cPathz[ptVoices] + '/' + locName;
        if pfsExists(path) then
            name:= locName
        else
            if Length(cLocale) > 3 then
                begin
                locName:= name+'_'+Copy(cLocale,1,2);
                path:= cPathz[ptVoices] + '/' + locName;
                if pfsExists(path) then
                    name:= locName
                end
        end;

    path:= cPathz[ptVoices] + '/' + name;

    // Fallback to Default if voicepack can't be found at all
    if (name <> 'Default') and (not pfsExists(path)) then
        begin
        path:= cPathz[ptVoices] + '/Default';
        if pfsExists(path) then
            exit(AskForVoicepack('Default'));
        end;

    while (voicepacks[i].name <> name) and (voicepacks[i].name <> '') and (i < cMaxTeams) do
        begin
        inc(i);
        //TryDo(i <= cMaxTeams, 'Engine bug: AskForVoicepack i > cMaxTeams', true)
        end;

    voicepacks[i].name:= name;
    AskForVoicepack:= @voicepacks[i]
end;

procedure InitSound;
const channels: LongInt = 2;
var success: boolean;
begin
    if not (isSoundEnabled or isMusicEnabled) then
        exit;
    WriteToConsole('Init sound...');
    success:= SDL_InitSubSystem(SDL_INIT_AUDIO) >= 0;

    if success then
        success:= Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, channels, 1024) = 0;

    if success then
        WriteLnToConsole(msgOK)
    else
    begin
        WriteLnToConsole(msgFailed);
        isSoundEnabled:= false;
        isMusicEnabled:= false;
    end;

    WriteToConsole('Init SDL_mixer... ');
    if SDLCheck(Mix_Init(MIX_INIT_OGG) <> 0, 'Mix_Init', true) then exit;
    WriteLnToConsole(msgOK);

    Mix_AllocateChannels(Succ(chanTPU));
    previousVolume:= cInitVolume;
    ChangeVolume(cInitVolume);
end;

procedure ResetSound;
begin
    isSoundEnabled:= isSEBackup;
end;

procedure SetSound(enabled: boolean);
begin
    isSEBackup:= isSoundEnabled;
    isSoundEnabled:= enabled;
end;

// when complete is false, this procedure just releases some of the chucks on inactive channels
// in this way music is not stopped, nor are chucks currently being played
procedure ReleaseSound(complete: boolean);
var i: TSound;
    t: Longword;
begin
    // release and nil all sounds
    for t:= 0 to cMaxTeams do
        if voicepacks[t].name <> '' then
            for i:= Low(TSound) to High(TSound) do
                if voicepacks[t].chunks[i] <> nil then
                    if complete or (Mix_Playing(lastChan[i]) = 0) then
                        begin
                        Mix_HaltChannel(lastChan[i]);
                        lastChan[i]:= -1;
                        Mix_FreeChunk(voicepacks[t].chunks[i]);
                        voicepacks[t].chunks[i]:= nil;
                        end;

    // stop music
    if complete then
        begin
        if Mus <> nil then
            begin
            Mix_HaltMusic();
            Mix_FreeMusic(Mus);
            Mus:= nil;
            end;

        // make sure all instances of sdl_mixer are unloaded before continuing
        while Mix_Init(0) <> 0 do
            Mix_Quit();

        Mix_CloseAudio();
        end;
end;

procedure PlaySound(snd: TSound);
begin
    PlaySoundV(snd, nil, false);
end;

procedure PlaySound(snd: TSound; keepPlaying: boolean);
begin
    PlaySoundV(snd, nil, keepPlaying);
end;

procedure PlaySoundV(snd: TSound; voicepack: PVoicepack);
begin
    PlaySoundV(snd, voicepack, false);
end;

procedure PlaySoundV(snd: TSound; voicepack: PVoicepack; keepPlaying: boolean);
var s:shortstring;
rwops: PSDL_RWops;
begin
    if (not isSoundEnabled) or fastUntilLag then
        exit;

    if keepPlaying and (lastChan[snd] <> -1) and (Mix_Playing(lastChan[snd]) <> 0) then
        exit;

    if (voicepack <> nil) then
        begin
        if (voicepack^.chunks[snd] = nil) and (Soundz[snd].Path = ptVoices) and (Soundz[snd].FileName <> '') then
            begin
            s:= cPathz[Soundz[snd].Path] + '/' + voicepack^.name + '/' + Soundz[snd].FileName;
            if (not pfsExists(s)) and (snd in [sndFirePunch2, sndFirePunch3, sndFirePunch4, sndFirePunch5, sndFirePunch6]) then
                s:= cPathz[Soundz[sndFirePunch1].Path] + '/' + voicepack^.name + '/' + Soundz[snd].FileName;
            WriteToConsole(msgLoading + s + ' ');
            rwops := rwopsOpenRead(s);
            
            if rwops = nil then
                begin
                s:= cPathz[Soundz[snd].AltPath] + '/' + voicepack^.name + '/' + Soundz[snd].FileName;
                WriteToConsole(msgLoading + s + ' ... ');
                rwops := rwopsOpenRead(s);
                end;
            voicepack^.chunks[snd]:= Mix_LoadWAV_RW(rwops, 1);

            if voicepack^.chunks[snd] = nil then
                WriteLnToConsole(msgFailed)
            else
                WriteLnToConsole(msgOK)
            end;
        lastChan[snd]:= Mix_PlayChannelTimed(-1, voicepack^.chunks[snd], 0, -1)
        end
    else
        begin
        if (defVoicepack^.chunks[snd] = nil) and (Soundz[snd].Path <> ptVoices) and (Soundz[snd].FileName <> '') then
            begin
            s:= cPathz[Soundz[snd].Path] + '/' + Soundz[snd].FileName;
            WriteToConsole(msgLoading + s + ' ');
            rwops := rwopsOpenRead(s);
            
            if rwops = nil then
                begin
                s:= cPathz[Soundz[snd].AltPath] + '/' + voicepack^.name + '/' + Soundz[snd].FileName;
                WriteToConsole(msgLoading + s + ' ... ');
                rwops := rwopsOpenRead(s);
                end;
            
            defVoicepack^.chunks[snd]:= Mix_LoadWAV_RW(rwops, 1);
            if SDLCheck(defVoicepack^.chunks[snd] <> nil, 'Mix_LoadWAV_RW', true) then exit;
            WriteLnToConsole(msgOK);
            end;
        lastChan[snd]:= Mix_PlayChannelTimed(-1, defVoicepack^.chunks[snd], 0, -1)
        end;
end;

procedure AddVoice(snd: TSound; voicepack: PVoicepack);
var i : LongInt;
begin
    if (not isSoundEnabled) or fastUntilLag or ((LastVoice.snd = snd) and  (LastVoice.voicepack = voicepack)) then
        exit;
    if (snd = sndVictory) or (snd = sndFlawless) then
        begin
        Mix_FadeOutChannel(-1, 800);
        for i:= 0 to High(VoiceList) do
            VoiceList[i].snd:= sndNone;
        LastVoice.snd:= sndNone;
        end;

    i:= 0;
    while (i <= High(VoiceList)) and (VoiceList[i].snd <> sndNone) do
        inc(i);

    // skip playing same sound for same hog twice
    if (i>0) and (VoiceList[i-1].snd = snd) and (VoiceList[i-1].voicepack = voicepack) then
        exit;
    if(i <= High(VoiceList)) then
        begin
        VoiceList[i].snd:= snd;
        VoiceList[i].voicepack:= voicepack;
        end
end;

procedure PlayNextVoice;
var i : LongInt;
begin
    if (not isSoundEnabled) or fastUntilLag or ((LastVoice.snd <> sndNone) and (lastChan[LastVoice.snd] <> -1) and (Mix_Playing(lastChan[LastVoice.snd]) <> 0)) then
        exit;
    i:= 0;
    while (i<High(VoiceList)) and (VoiceList[i].snd = sndNone) do
        inc(i);

    if (VoiceList[i].snd <> sndNone) then
        begin
        LastVoice.snd:= VoiceList[i].snd;
        LastVoice.voicepack:= VoiceList[i].voicepack;
        VoiceList[i].snd:= sndNone;
        PlaySoundV(LastVoice.snd, LastVoice.voicepack)
        end
    else LastVoice.snd:= sndNone;
end;

function LoopSound(snd: TSound): LongInt;
begin
    LoopSound:= LoopSoundV(snd, nil)
end;

function LoopSound(snd: TSound; fadems: LongInt): LongInt;
begin
    LoopSound:= LoopSoundV(snd, nil, fadems)
end;

function LoopSoundV(snd: TSound; voicepack: PVoicepack): LongInt;
begin
    voicepack:= voicepack;    // avoid compiler hint
    LoopSoundV:= LoopSoundV(snd, nil, 0)
end;

function LoopSoundV(snd: TSound; voicepack: PVoicepack; fadems: LongInt): LongInt;
var s: shortstring;
rwops: PSDL_RWops;
begin
    if (not isSoundEnabled) or fastUntilLag then
        begin
        LoopSoundV:= -1;
        exit
        end;

    if (voicepack <> nil) then
        begin
        if (voicepack^.chunks[snd] = nil) and (Soundz[snd].Path = ptVoices) and (Soundz[snd].FileName <> '') then
           begin
            s:= cPathz[Soundz[snd].Path] + '/' + voicepack^.name + '/' + Soundz[snd].FileName;
            WriteToConsole(msgLoading + s + ' ');
            rwops:=rwopsOpenRead(s);
            
            if rwops = nil then
                begin
                s:= cPathz[Soundz[snd].AltPath] + '/' + Soundz[snd].FileName;
                WriteToConsole(msgLoading + s + ' ... ');
                rwops:=rwopsOpenRead(s);
                end;
                
            defVoicepack^.chunks[snd]:= Mix_LoadWAV_RW(rwops, 1);
            if voicepack^.chunks[snd] = nil then
                WriteLnToConsole(msgFailed)
            else
                WriteLnToConsole(msgOK)
            end;
        LoopSoundV:= Mix_PlayChannelTimed(-1, voicepack^.chunks[snd], -1, -1)
        end
    else
        begin
        if (defVoicepack^.chunks[snd] = nil) and (Soundz[snd].Path <> ptVoices) and (Soundz[snd].FileName <> '') then
            begin
            s:= cPathz[Soundz[snd].Path] + '/' + Soundz[snd].FileName;
            WriteToConsole(msgLoading + s + ' ');
            defVoicepack^.chunks[snd]:= Mix_LoadWAV_RW(rwopsOpenRead(s), 1);
            if SDLCheck(defVoicepack^.chunks[snd] <> nil, 'Mix_LoadWAV_RW', true) then exit;
            WriteLnToConsole(msgOK);
            end;
        if fadems > 0 then
            LoopSoundV:= Mix_FadeInChannelTimed(-1, defVoicepack^.chunks[snd], -1, fadems, -1)
        else
            LoopSoundV:= Mix_PlayChannelTimed(-1, defVoicepack^.chunks[snd], -1, -1);
        end;
end;

procedure StopSound(snd: TSound);
begin
    if not isSoundEnabled then
        exit;

    if (lastChan[snd] <> -1) and (Mix_Playing(lastChan[snd]) <> 0) then
        begin
        Mix_HaltChannel(lastChan[snd]);
        lastChan[snd]:= -1;
        end;
end;

procedure StopSoundChan(chn: LongInt);
begin
    if not isSoundEnabled then
        exit;

    if (chn <> -1) and (Mix_Playing(chn) <> 0) then
        Mix_HaltChannel(chn);
end;

procedure StopSoundChan(chn, fadems: LongInt);
begin
    if not isSoundEnabled then
        exit;

    if (chn <> -1) and (Mix_Playing(chn) <> 0) then
        Mix_FadeOutChannel(chn, fadems);
end;

procedure PlayMusic;
var s: shortstring;
begin
    if (MusicFN = '') or (not isMusicEnabled) then
        exit;
    if SuddenDeath and (SDMusicFN <> '') then
         s:= '/Music/' + SDMusicFN
    else s:= '/Music/' + MusicFN;
    WriteToConsole(msgLoading + s + ' ');

    Mus:= Mix_LoadMUS_RW(rwopsOpenRead(s));
    SDLCheck(Mus <> nil, 'Mix_LoadMUS_RW', false);
    WriteLnToConsole(msgOK);

    SDLCheck(Mix_FadeInMusic(Mus, -1, 3000) <> -1, 'Mix_FadeInMusic', false)
end;

procedure SetVolume(vol: LongInt);
begin
    cInitVolume:= vol;
end;

function ChangeVolume(voldelta: LongInt): LongInt;
begin
    ChangeVolume:= 0;
    if not (isSoundEnabled or isMusicEnabled) or ((voldelta = 0) and (not (cInitVolume = 0))) then
        exit;

    inc(Volume, voldelta);
    if Volume < 0 then
        Volume:= 0;
    // apply Volume to all channels
    Mix_Volume(-1, Volume);
    // get assigned Volume
    Volume:= Mix_Volume(-1, -1);
    if isMusicEnabled then
        Mix_VolumeMusic(Volume * 4 div 8);
    ChangeVolume:= Volume * 100 div MIX_MAX_VOLUME;

    if (isMusicEnabled) then
        if (Volume = 0) then
            PauseMusic
            else
            ResumeMusic;

    isAudioMuted:= (Volume = 0);
end;

procedure DampenAudio;
begin
    if (isAudioMuted) then
        exit;
    previousVolume:= Volume;
    ChangeVolume(-Volume * 7 div 9);
end;

procedure UndampenAudio;
begin
     if (isAudioMuted) then
        exit;
    ChangeVolume(previousVolume - Volume);
end;

procedure MuteAudio;
begin
    if not (isSoundEnabled or isMusicEnabled) then
        exit;

    if (isAudioMuted) then
    begin
        ResumeMusic;
        ChangeVolume(previousVolume);
    end
    else
    begin
        PauseMusic;
        previousVolume:= Volume;
        ChangeVolume(-Volume);
    end;

    // isAudioMuted is updated in ChangeVolume
end;

procedure SetMusic(enabled: boolean);
begin
    isMusicEnabled:= enabled;
end;

procedure SetMusicName(musicname: shortstring);
begin
    MusicFN:= musicname;
end;

procedure PauseMusic;
begin
    if (MusicFN = '') or (not isMusicEnabled) then
        exit;

    if Mus <> nil then
        Mix_PauseMusic(Mus);
end;

procedure ResumeMusic;
begin
    if (MusicFN = '') or (not isMusicEnabled) then
        exit;

    if Mus <> nil then
        Mix_ResumeMusic(Mus);
end;

procedure ChangeMusic(musicname: shortstring);
begin
    MusicFN:= musicname;
    if (MusicFN = '') or (not isMusicEnabled) then
        exit;

    StopMusic;
    PlayMusic;
end;

procedure StopMusic;
begin
    if (MusicFN = '') or (not isMusicEnabled) then
        exit;

    if Mus <> nil then
        begin
        Mix_FreeMusic(Mus);
        Mus:= nil;
        end
end;

procedure chVoicepack(var s: shortstring);
begin
    if CurrentTeam = nil then
        OutError(errmsgIncorrectUse + ' "/voicepack"', true);
    if s[1]='"' then Delete(s, 1, 1);
    if s[byte(s[0])]='"' then
        Delete(s, byte(s[0]), 1);
    CurrentTeam^.voicepack:= AskForVoicepack(s)
end;

procedure chMute(var s: shortstring);
begin
    s:= s; // avoid compiler hint
    MuteAudio;
end;

procedure preInitModule;
begin
    isMusicEnabled:= true;
    isSoundEnabled:= true;
    cInitVolume:= 100;
end;

procedure initModule;
var t: LongInt;
    i: TSound;
begin
    RegisterVariable('voicepack', @chVoicepack, false);
    RegisterVariable('mute'     , @chMute     , true );

    MusicFN:='';
    SDMusicFN:= 'sdmusic.ogg';
    Mus:= nil;
    isAudioMuted:= false;
    isSEBackup:= isSoundEnabled;
    Volume:= 0;
    SoundTimerTicks:= 0;
    defVoicepack:= AskForVoicepack('Default');

    for i:= Low(TSound) to High(TSound) do
        lastChan[i]:= -1;

    // initialize all voices to nil so that they can be loaded lazily
    for t:= 0 to cMaxTeams do
        if voicepacks[t].name <> '' then
            for i:= Low(TSound) to High(TSound) do
                voicepacks[t].chunks[i]:= nil;

    (* on MOBILE SDL_mixer has to be compiled against Tremor (USE_OGG_TREMOR)
       or sound files bigger than 32k will lockup the game on slow cpu *)
    for i:= Low(TSound) to High(TSound) do
        defVoicepack^.chunks[i]:= nil;

end;

procedure freeModule;
begin
    if isSoundEnabled or isMusicEnabled then
        ReleaseSound(true);
end;

end.

