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

unit uChat;

interface

procedure AddChatString(s: shortstring);
procedure DrawChat;
procedure KeyPressChat(Key: Longword);

var UserNick: shortstring = '';
	showAll: boolean = false;

implementation
uses uMisc, uStore, uConsts, SDLh, uConsole, uKeys, uTeams;

const MaxStrIndex = 27;

type TChatLine = record
		Tex: PTexture;
		Time: Longword;
		Width: LongInt;
		s: shortstring;
		end;

var Strs: array[0 .. MaxStrIndex] of TChatLine;
	lastStr: Longword = 0;
	visibleCount: Longword = 0;
	
	InputStr: TChatLine;
	InputStrL: array[0..260] of char; // for full str + 4-byte utf-8 char

procedure SetLine(var cl: TChatLine; str: shortstring; isInput: boolean);
var strSurface, resSurface: PSDL_Surface;
	w, h: LongInt;
begin
if cl.Tex <> nil then
	FreeTexture(cl.Tex);

cl.s:= str;

if isInput then str:= UserNick + '> ' + str + '_';

TTF_SizeUTF8(Fontz[fnt16].Handle, Str2PChar(str), w, h);

resSurface:= SDL_CreateRGBSurface(0,
		toPowerOf2(w),
		toPowerOf2(h),
		32,
		RMask, GMask, BMask, AMask);

strSurface:= TTF_RenderUTF8_Solid(Fontz[fnt16].Handle, Str2PChar(str), $FFFFFF);
cl.Width:= w + 4;
SDL_UpperBlit(strSurface, nil, resSurface, nil);
SDL_FreeSurface(strSurface);

cl.Time:= RealTicks + 12500;
cl.Tex:= Surface2Tex(resSurface);

SDL_FreeSurface(resSurface)
end;

procedure AddChatString(s: shortstring);
begin
lastStr:= (lastStr + 1) mod (MaxStrIndex + 1);

SetLine(Strs[lastStr], s, false);

inc(visibleCount)
end;

procedure DrawChat;
var i, t, cnt: Longword;
	r: TSDL_Rect;
begin
cnt:= 0;
t:= 0;
i:= lastStr;

r.x:= 6;
r.y:= (visibleCount - t) * 16 + 10;
r.h:= 16;

if (GameState = gsChat)
	and (InputStr.Tex <> nil) then
	begin
	r.w:= InputStr.Width;
	DrawFillRect(r);
	DrawTexture(8, visibleCount * 16 + 10, InputStr.Tex);
	end;

dec(r.y, 16);

while
	(
			((t < 7) and (Strs[i].Time > RealTicks))
		or
			((t < MaxStrIndex) and showAll)
	)
	and
		(Strs[i].Tex <> nil) do
	begin
	r.w:= Strs[i].Width;
	DrawFillRect(r);
	DrawTexture(8, (visibleCount - t) * 16 - 6, Strs[i].Tex);
	dec(r.y, 16);
	
	if i = 0 then i:= MaxStrIndex else dec(i);
	inc(cnt);
	inc(t)
	end;

visibleCount:= cnt;
end;

procedure AcceptChatString(s: shortstring);
var i: TWave;
begin
if (s[1] = '/') and (copy(s, 1, 4) <> '/me ') then
	begin
	if CurrentTeam^.ExtDriven then exit;
	
	for i:= Low(TWave) to High(TWave) do
		if (s = Wavez[i].cmd) then
			begin
			ParseCommand('/taunt ' + char(i), true);
			exit
			end;
	end
	else
		ParseCommand('/say ' + s, true);
end;

procedure KeyPressChat(Key: Longword);
const firstByteMark: array[1..4] of byte = (0, $C0, $E0, $F0);
var i, btw: integer;
    utf8: shortstring;
begin
if Key <> 0 then
	case Key of
		8: if Length(InputStr.s) > 0 then
				begin
				InputStr.s[0]:= InputStrL[byte(InputStr.s[0])];
				SetLine(InputStr, InputStr.s, true)
				end;
		27: SetLine(InputStr, '', true);
		13, 271: begin
			if Length(InputStr.s) > 0 then
				begin
				AcceptChatString(InputStr.s);
				SetLine(InputStr, '', false)
				end;
			FreezeEnterKey;
			GameState:= gsGame
			end
	else
	if (Key < $80) then btw:= 1
	else if (Key < $800) then btw:= 2
	else if (Key < $10000) then btw:= 3
	else btw:= 4;
	
	utf8:= '';

	for i:= btw downto 2 do
		begin
		utf8:= char((Key or $80) and $BF) + utf8;
		Key:= Key shr 6
		end;
	
	utf8:= char(Key or firstByteMark[btw]) + utf8;

	InputStrL[byte(InputStr.s[0]) + btw]:= InputStr.s[0];
	SetLine(InputStr, InputStr.s + utf8, true)
	end
end;


end.
