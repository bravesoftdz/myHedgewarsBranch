(*
 * Hedgewars, a free turn based strategy game
 * Copyright (c) 2008 Andrey Korotaev <unC0Rr@gmail.com>
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
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA
 *)

{$INCLUDE "options.inc"}

unit uVisualGears;
interface
uses uConsts, uFloat, Math, GLunit;

type PVisualGear = ^TVisualGear;
    TVGearStepProcedure = procedure (Gear: PVisualGear; Steps: Longword);
    TVisualGear = record
        NextGear, PrevGear: PVisualGear;
        Frame,
        FrameTicks: Longword;
        X : hwFloat;
        Y : hwFloat;
        dX: hwFloat;
        dY: hwFloat;
        tdX: hwFloat;
        tdY: hwFloat;
        mdY: QWord;
        State : Longword;
        Timer: Longword;
        Angle, dAngle: real;
        Kind: TVisualGearType;
        doStep: TVGearStepProcedure;
        Tex: PTexture;
        alpha, scale: GLfloat;
        Hedgehog: pointer;
        Text: shortstring
        end;

procedure initModule;
procedure freeModule;

function  AddVisualGear(X, Y: LongInt; Kind: TVisualGearType; State: LongWord = 0): PVisualGear;
procedure ProcessVisualGears(Steps: Longword);
procedure KickFlakes(Radius, X, Y: LongInt);
procedure DrawVisualGears(Layer: LongWord);
procedure DeleteVisualGear(Gear: PVisualGear);
procedure AddClouds;
procedure AddDamageTag(X, Y, Damage, Color: LongWord);
procedure FreeVisualGears;

var VisualGearsList: PVisualGear;
    vobFrameTicks, vobFramesCount, vobCount: Longword;
    vobVelocity, vobFallSpeed: LongInt;

implementation
uses uWorld, uMisc, uStore, uTeams, uSound;
const cExplFrameTicks = 110;

{$INCLUDE "VGSHandlers.inc"}

procedure AddDamageTag(X, Y, Damage, Color: LongWord);
var s: shortstring;
    Gear: PVisualGear;
begin
if cAltDamage then
    begin
    Gear:= AddVisualGear(X, Y, vgtSmallDamageTag);
    if Gear <> nil then
        with Gear^ do
            begin
            str(Damage, s);
            Tex:= RenderStringTex(s, Color, fntSmall);
            end
    end
end;


// ==================================================================

// ==================================================================
const doStepHandlers: array[TVisualGearType] of TVGearStepProcedure =
        (
            @doStepFlake,
            @doStepCloud,
            @doStepExpl,
            @doStepExpl,
            @doStepFire,
            @doStepSmallDamage,
            @doStepTeamHealthSorter,
            @doStepSpeechBubble,
            @doStepBubble,
            @doStepSteam,
            @doStepAmmo,
            @doStepSmoke,
            @doStepSmoke,
            @doStepHealth,
            @doStepShell,
            @doStepDust,
            @doStepSplash,
            @doStepDroplet,
            @doStepSmokeRing,
            @doStepBeeTrace,
            @doStepEgg,
            @doStepFeather,
            @doStepHealthTag,
            @doStepSmokeTrace,
            @doStepSmokeTrace,
            @doStepExplosion,
            @doStepBigExplosion
        );

function  AddVisualGear(X, Y: LongInt; Kind: TVisualGearType; State: LongWord = 0): PVisualGear;
var gear: PVisualGear;
    t: Longword;
    sp: hwFloat;
begin
if (GameType = gmtSave) or (fastUntilLag and (GameType = gmtNet)) then // we are scrolling now
    if Kind <> vgtCloud then
        begin
        AddVisualGear:= nil;
        exit
        end;

if cReducedQuality and
   not (Kind in
   [vgtTeamHealthSorter,
    vgtSmallDamageTag,
    vgtSpeechBubble,
    vgtHealthTag,
    vgtExplosion,
    vgtSmokeTrace,
    vgtEvilTrace]) then
    begin
    AddVisualGear:= nil;
    exit
    end;

New(gear);
FillChar(gear^, sizeof(TVisualGear), 0);
gear^.X:= int2hwFloat(X);
gear^.Y:= int2hwFloat(Y);
gear^.Kind := Kind;
gear^.doStep:= doStepHandlers[Kind];
gear^.State:= 0;

with gear^ do
    case Kind of
    vgtFlake: begin
                Timer:= 0;
                tdX:= _0;
                tdY:= _0;
                FrameTicks:= random(vobFrameTicks);
                Frame:= random(vobFramesCount);
                Angle:= random * 360;
                dx.isNegative:= random(2) = 0;
                dx.QWordValue:= random(100000000);
                dy.isNegative:= false;
                dy.QWordValue:= random(70000000);
                dAngle:= (random(2) * 2 - 1) * (1 + random) * vobVelocity / 1000
                end;
    vgtCloud: begin
                Frame:= random(4);
                dx.isNegative:= random(2) = 0;
                dx.QWordValue:= random(214748364);
                dy.isNegative:= random(2) = 0;
                dy.QWordValue:= 21474836 + random(64424509);
                mdY:= dy.QWordValue
                end;
    vgtExplPart,
    vgtExplPart2: begin
                t:= random(1024);
                sp:= _0_001 * (random(95) + 70);
                dx:= AngleSin(t) * sp;
                dx.isNegative:= random(2) = 0;
                dy:= AngleCos(t) * sp;
                dy.isNegative:= random(2) = 0;
                Frame:= 7 - random(3);
                FrameTicks:= cExplFrameTicks
                end;
        vgtFire: begin
                t:= random(1024);
                sp:= _0_001 * (random(85) + 95);
                dx:= AngleSin(t) * sp;
                dx.isNegative:= random(2) = 0;
                dy:= AngleCos(t) * sp;
                dy.isNegative:= random(2) = 0;
                FrameTicks:= 650 + random(250);
                Frame:= random(8)
                end;
         vgtEgg: begin
                t:= random(1024);
                sp:= _0_001 * (random(85) + 95);
                dx:= AngleSin(t) * sp;
                dx.isNegative:= random(2) = 0;
                dy:= AngleCos(t) * sp;
                dy.isNegative:= random(2) = 0;
                FrameTicks:= 650 + random(250);
                Frame:= 1
                end;
        vgtShell: FrameTicks:= 500;
    vgtSmallDamageTag: begin
                gear^.FrameTicks:= 1100
                end;
    vgtBubble: begin
                dx.isNegative:= random(2) = 0;
                dx.QWordValue:= random(100000000);
                dy:= _0_001 * (random(85) + 95);
                dy.isNegative:= false;
                FrameTicks:= 250 + random(1751);
                Frame:= random(5)
                end;
    vgtSteam: begin
                dx.isNegative:= random(2) = 0;
                dx.QWordValue:= random(100000000);
                dy:= _0_001 * (random(85) + 95);
                dy.isNegative:= false;
                Frame:= 7 - random(3);
                FrameTicks:= cExplFrameTicks * 2;
                end;
    vgtAmmo: begin
                alpha:= 1.0;
                scale:= 1.0
                end;
  vgtSmokeWhite, 
  vgtSmoke: begin
                dx:= _0_0002 * (random(45) + 10);
                dx.isNegative:= random(2) = 0;
                dy:= _0_0002 * (random(45) + 10);
                dy.isNegative:= false;
                Frame:= 7 - random(2);
                FrameTicks:= cExplFrameTicks * 2;
                end;
    vgtHealth: begin
                dx:= _0_001 * random(45);
                dx.isNegative:= random(2) = 0;
                dy:= _0_001 * (random(20) + 25);
                Frame:= 0;
                FrameTicks:= random(750) + 1250;
                end;
  vgtDust: begin
                dx:= _0_005 * (random(15) + 10);
                dx.isNegative:= random(2) = 0;
                dy:= _0_001 * (random(40) + 20);
                Frame:= 7 - random(2);
                FrameTicks:= random(20) + 15;
                end;
  vgtSplash: begin
                dx:= _0;
                dx.isNegative:= false;
                dy:= _0;
                FrameTicks:= 740;
                Frame:= 19;
                end;
    vgtDroplet: begin
                dx:= _0_001 * (random(75) + 15);
                dx.isNegative:= random(2) = 0;
                dy:= _0_001 * (random(80) + 120);
                dy.isNegative:= true;
                FrameTicks:= 250 + random(1751);
                Frame:= random(3)
                end;
   vgtBeeTrace: begin
                FrameTicks:= 1000;
                Frame:= random(16);
                end;
    vgtSmokeRing: begin
                dx:= _0;
                dx.isNegative:= false;
                dy:= _0;
                dy.isNegative:= false;
                FrameTicks:= 600;
                Timer:= 0;
                Frame:= 0;
                scale:= 0.6;
                alpha:= 1;
                angle:= random(360);
                end;
     vgtFeather: begin
                t:= random(1024);
                sp:= _0_001 * (random(85) + 95);
                dx:= AngleSin(t) * sp;
                dx.isNegative:= random(2) = 0;
                dy:= AngleCos(t) * sp;
                dy.isNegative:= random(2) = 0;
                FrameTicks:= 650 + random(250);
                Frame:= 1
                end;
  vgtHealthTag: begin
                gear^.Timer:= 1500;
                //gear^.Z:= 2002;
                end;
  vgtSmokeTrace,
  vgtEvilTrace: begin
                gear^.X:= gear^.X - _16;
                gear^.Y:= gear^.Y - _16;
                gear^.State:= 8;
                //gear^.Z:= cSmokeZ
                end;
vgtBigExplosion: begin
                gear^.Angle:= random(360);
                end;
        end;

if State <> 0 then gear^.State:= State;

if VisualGearsList <> nil then
    begin
    VisualGearsList^.PrevGear:= gear;
    gear^.NextGear:= VisualGearsList
    end;
VisualGearsList:= gear;

AddVisualGear:= gear;
end;

procedure DeleteVisualGear(Gear: PVisualGear);
begin
if Gear^.Tex <> nil then
    FreeTexture(Gear^.Tex);

if Gear^.NextGear <> nil then Gear^.NextGear^.PrevGear:= Gear^.PrevGear;
if Gear^.PrevGear <> nil then Gear^.PrevGear^.NextGear:= Gear^.NextGear
   else VisualGearsList:= Gear^.NextGear;

Dispose(Gear)
end;

procedure ProcessVisualGears(Steps: Longword);
var Gear, t: PVisualGear;
begin
if Steps = 0 then exit;

t:= VisualGearsList;
while t <> nil do
      begin
      Gear:= t;
      t:= Gear^.NextGear;
      Gear^.doStep(Gear, Steps)
      end
end;

procedure KickFlakes(Radius, X, Y: LongInt);
var Gear, t: PVisualGear;
    dmg: LongInt;
begin
if (vobCount = 0) or (vobCount > 200) or cReducedQuality then exit;
t:= VisualGearsList;
while t <> nil do
      begin
      Gear:= t;
      if Gear^.Kind = vgtFlake then
          begin
          // Damage calc from doMakeExplosion
          dmg:= min(100,Radius  + cHHRadius div 2 - (hwRound(hwAbs(Gear^.X - int2hwFloat(X))+hwAbs(Gear^.Y - int2hwFloat(Y))) div 5));
          if dmg > 1 then
              begin
              Gear^.tdX:= SignAs(_0_02 * dmg + cHHKick, Gear^.X - int2hwFloat(X));
              Gear^.tdY:= SignAs(_0_02 * dmg + cHHKick, Gear^.Y - int2hwFloat(Y));
              Gear^.Timer:= 200
              end
          end;
      t:= Gear^.NextGear
      end
end;

procedure DrawVisualGears(Layer: LongWord);
var Gear: PVisualGear;
begin
Gear:= VisualGearsList;
case Layer of
    0: while Gear <> nil do
        begin
        case Gear^.Kind of
            vgtFlake: if vobVelocity = 0 then
                        DrawSprite(sprFlake, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy + SkyOffset, Gear^.Frame)
                    else
                        DrawRotatedF(sprFlake, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy + SkyOffset, Gear^.Frame, 1, Gear^.Angle);
            vgtCloud: DrawSprite(sprCloud, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy + SkyOffset, Gear^.Frame);
            end;
        Gear:= Gear^.NextGear
        end;
    1: while Gear <> nil do
        begin
        case Gear^.Kind of
            vgtSmokeTrace: if Gear^.State < 8 then DrawSprite(sprSmokeTrace, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.State);
            vgtEvilTrace: if Gear^.State < 8 then DrawSprite(sprEvilTrace, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.State);
        end;
            if not cReducedQuality then
                case Gear^.Kind of
                    vgtSmoke: DrawSprite(sprSmoke, hwRound(Gear^.X) + WorldDx - 11, hwRound(Gear^.Y) + WorldDy - 11, 7 - Gear^.Frame);
                    vgtSmokeWhite: DrawSprite(sprSmokeWhite, hwRound(Gear^.X) + WorldDx - 11, hwRound(Gear^.Y) + WorldDy - 11, 7 - Gear^.Frame);
                    vgtDust: DrawSprite(sprDust, hwRound(Gear^.X) + WorldDx - 11, hwRound(Gear^.Y) + WorldDy - 11, 7 - Gear^.Frame);
                    vgtFeather: begin
                            if Gear^.FrameTicks < 255 then
                                Tint($FF, $FF, $FF, Gear^.FrameTicks);
                            DrawRotatedF(sprFeather, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Frame, 1, Gear^.Angle);
                            if Gear^.FrameTicks < 255 then
                                Tint($FF, $FF, $FF, $FF);
                            end;
                 end;
        Gear:= Gear^.NextGear
        end;
    2: while Gear <> nil do
        begin
        case Gear^.Kind of
            vgtExplosion: DrawSprite(sprExplosion50, hwRound(Gear^.X) - 32 + WorldDx, hwRound(Gear^.Y) - 32 + WorldDy, Gear^.State);
            vgtBigExplosion: begin
                             Tint($FF, $FF, $FF, floor($FF * (1 - power(Gear^.Timer / 250, 4))));
                             DrawRotatedTextureF(SpritesData[sprBigExplosion].Texture, 0.85 * (-power(2, -10 * Int(Gear^.Timer)/250) + 1) + 0.4, 0, 0, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, 0, 1, 385, 385, Gear^.Angle);
                             Tint($FF, $FF, $FF, $FF);
                             end;
            end;
        if not cReducedQuality then
            case Gear^.Kind of
                vgtExplPart: DrawSprite(sprExplPart, hwRound(Gear^.X) + WorldDx - 16, hwRound(Gear^.Y) + WorldDy - 16, 7 - Gear^.Frame);
                vgtExplPart2: DrawSprite(sprExplPart2, hwRound(Gear^.X) + WorldDx - 16, hwRound(Gear^.Y) + WorldDy - 16, 7 - Gear^.Frame);
                vgtFire: DrawSprite(sprFlame, hwRound(Gear^.X) + WorldDx - 8, hwRound(Gear^.Y) + WorldDy, (RealTicks div 64 + Gear^.Frame) mod 8);
                vgtBubble: DrawSprite(sprBubbles, hwRound(Gear^.X) + WorldDx - 8, hwRound(Gear^.Y) + WorldDy - 8, Gear^.Frame);//(RealTicks div 64 + Gear^.Frame) mod 8);
                vgtSteam: DrawSprite(sprExplPart, hwRound(Gear^.X) + WorldDx - 16, hwRound(Gear^.Y) + WorldDy - 16, 7 - Gear^.Frame);
                vgtAmmo: begin
                        Tint($FF, $FF, $FF, floor(Gear^.alpha * $FF));
                        DrawTextureF(ropeIconTex, Gear^.scale, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, 0, 1, 32, 32);
                        DrawTextureF(SpritesData[sprAMAmmos].Texture, Gear^.scale * 0.90, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Frame - 1, 1, 32, 32);
                        Tint($FF, $FF, $FF, $FF);
                        end;
                vgtHealth:  begin
                            case Gear^.Frame div 10 of
                                0:Tint(0, $FF, 0, floor(Gear^.FrameTicks * $FF / 1000));
                                1:Tint($FF, 0, 0, floor(Gear^.FrameTicks * $FF / 1000));
                            end;
                            DrawSprite(sprHealth, hwRound(Gear^.X) + WorldDx - 8, hwRound(Gear^.Y) + WorldDy - 8, 0);
                            Tint($FF, $FF, $FF, $FF);
                            end;
                vgtShell: begin
                            if Gear^.FrameTicks < $FF then
                                Tint($FF, $FF, $FF, Gear^.FrameTicks);
                            DrawRotatedF(sprShell, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Frame, 1, Gear^.Angle);
                            if Gear^.FrameTicks < $FF then
                                Tint($FF, $FF, $FF, $FF);
                            end;
                  vgtEgg: begin
                            if Gear^.FrameTicks < $FF then
                                Tint($FF, $FF, $FF, Gear^.FrameTicks);
                            DrawRotatedF(sprEgg, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Frame, 1, Gear^.Angle);
                            if Gear^.FrameTicks < $FF then
                                Tint($FF, $FF, $FF, $FF);
                            end;
                vgtSplash: DrawSprite(sprSplash, hwRound(Gear^.X) + WorldDx - 40, hwRound(Gear^.Y) + WorldDy - 58, 19 - (Gear^.FrameTicks div 37));
                vgtDroplet: DrawSprite(sprDroplet, hwRound(Gear^.X) + WorldDx - 8, hwRound(Gear^.Y) + WorldDy - 8, Gear^.Frame);
               vgtBeeTrace: begin
                            if Gear^.FrameTicks < $FF then
                                Tint($FF, $FF, $FF, Gear^.FrameTicks div 2)
                            else
                                Tint($FF, $FF, $FF, $80);
                            DrawRotatedF(sprBeeTrace, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Frame, 1, (RealTicks shr 4) mod cMaxAngle);
                            Tint($FF, $FF, $FF, $FF);
                            end;
                vgtSmokeRing: begin
                            Tint($FF, $FF, $FF, floor(Gear^.alpha * $FF));
                            DrawRotatedTextureF(SpritesData[sprSmokeRing].Texture, Gear^.scale, 0, 0, hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, 0, 1, 200, 200, Gear^.Angle);
                            Tint($FF, $FF, $FF, $FF);
                            end;
            end;
        case Gear^.Kind of
            vgtSmallDamageTag: DrawCentered(hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Tex);
            vgtSpeechBubble: if Gear^.Tex <> nil then DrawCentered(hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Tex);
            vgtHealthTag: if Gear^.Tex <> nil then DrawCentered(hwRound(Gear^.X) + WorldDx, hwRound(Gear^.Y) + WorldDy, Gear^.Tex);
        end;
        Gear:= Gear^.NextGear
        end
    end
end;

procedure AddClouds;
var i: LongInt;
begin
for i:= 0 to cCloudsNumber - 1 do
    AddVisualGear( - cScreenWidth + i * ((cScreenWidth * 2 + (LAND_WIDTH+256)) div (cCloudsNumber + 1)), LAND_HEIGHT-1184, vgtCloud)
end;

procedure FreeVisualGears;
begin
    while VisualGearsList <> nil do DeleteVisualGear(VisualGearsList);
end;

procedure initModule;
begin
    VisualGearsList:= nil;
end;

procedure freeModule;
begin
end;

end.
