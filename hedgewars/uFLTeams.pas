unit uFLTeams;
interface
uses uFLTypes;

function createRandomTeam: TTeam;
procedure sendTeamConfig(hp: LongInt; var team: TTeam);

function getTeamsList: PPChar; cdecl;
procedure freeTeamsList;

function teamByName(s: shortstring): PTeam;

procedure sendTeam(var team: TTeam);
procedure removeTeam(teamName: shortstring);

implementation
uses uFLUtils, uFLIPC, uPhysFSLayer, uFLThemes, uFLNet;

const MAX_TEAM_NAMES = 128;
var
    teamsList: PTeam;
    teamsNumber: Longword;
    listOfTeamNames: array[0..MAX_TEAM_NAMES] of PChar;


function createRandomTeam: TTeam;
var t: TTeam;
    i: Longword;
begin
    with t do
    begin
        teamName:= 'team' + inttostr(random(100));

        for i:= 0 to 7 do
            with hedgehogs[i] do
            begin
                name:= 'hedgehog ' + inttostr(i);
                hat:= 'NoHat'
            end;

        botLevel:= 0;
        hogsNumber:= 4
    end;
    createRandomTeam:= t
end;


procedure sendTeamConfig(hp: LongInt; var team: TTeam);
var i: Longword;
begin
    with team do
    begin
        ipcToEngine('eaddteam <hash> ' + colorsSet[color] + ' ' + teamName);

        if extDriven then
            ipcToEngine('erdriven');

        for i:= 0 to Pred(hogsNumber) do
        begin
            ipcToEngine('eaddhh ' + IntToStr(botLevel) + ' ' + IntToStr(hp) + ' ' + hedgehogs[i].name);
            ipcToEngine('ehat ' + hedgehogs[i].hat);
        end;
    end
end;


procedure loadTeam(var team: TTeam; fileName: shortstring);
var f: PFSFile;
    section: LongInt;
    l: shortstring;
begin
    section:= -1;
    f:= pfsOpenRead(fileName);

    while (not pfsEOF(f)) do
    begin
        pfsReadLn(f, l);

        if l = '' then
        else if l = '[Team]' then 
            section:= -2
        else if copy(l, 1, 9) = '[Hedgehog' then
            section:= StrToInt(copy(l, 10, 1))
        else if section = -2 then
        begin // [Team]
            if copy(l, 1, 5) = 'Name=' then
                team.teamName:= midStr(l, 6)
            else if copy(l, 1, 6) = 'Grave=' then
                team.grave:= midStr(l, 7)
            else if copy(l, 1, 5) = 'Fort=' then
                team.fort:= midStr(l, 6)
            else if copy(l, 1, 5) = 'Flag=' then
                team.flag:= midStr(l, 6)
            else if copy(l, 1, 10) = 'Voicepack=' then
                team.voice:= midStr(l, 11)
            else if copy(l, 1, 11) = 'Difficulty=' then
                team.botLevel:= StrToInt(midStr(l, 12))
        end else if (section >= 0) and (section <= 7) then
        begin // [Hedgehog*]
            if copy(l, 1, 5) = 'Name=' then
                team.hedgehogs[section].name:= midStr(l, 6)
            else if copy(l, 1, 4) = 'Hat=' then
                team.hedgehogs[section].hat:= midStr(l, 5)
        end;
    end;

    pfsClose(f)
end;


procedure loadTeams;
var filesList, tmp: PPChar;
    team: PTeam;
    s: shortstring;
    l: Longword;
begin
    filesList:= pfsEnumerateFiles('/Config/Teams');
    teamsNumber:= 0;

    tmp:= filesList;
    while tmp^ <> nil do
    begin
        s:= shortstring(tmp^);
        l:= length(s);
        if (l > 4) and (copy(s, l - 3, 4) = '.hwt') then inc(teamsNumber);
        inc(tmp)
    end;

    // TODO: no teams at all?
    teamsList:= GetMem(sizeof(teamsList^) * teamsNumber);

    team:= teamsList;
    tmp:= filesList;
    while tmp^ <> nil do
    begin
        s:= shortstring(tmp^);
        l:= length(s);
        if (l > 4) and (copy(s, l - 3, 4) = '.hwt') then 
            begin
                loadTeam(team^, '/Config/Teams/' + s);
                inc(team)
            end;
        inc(tmp)
    end;

    pfsFreeList(filesList)
end;


function getTeamsList: PPChar; cdecl;
var i, t, l: Longword;
    team: PTeam;
begin
    if teamsList = nil then
        loadTeams;

    t:= teamsNumber;
    if t >= MAX_TEAM_NAMES then 
        t:= MAX_TEAM_NAMES;

    team:= teamsList;
    for i:= 0 to Pred(t) do
    begin
        l:= length(team^.teamName);
        if l >= 255 then l:= 254;
        team^.teamName[l + 1]:= #0;
        listOfTeamNames[i]:= @team^.teamName[1];
        inc(team)
    end;

    listOfTeamNames[t]:= nil;

    getTeamsList:= listOfTeamNames
end;

function teamByName(s: shortstring): PTeam;
var i: Longword;
    team: PTeam;
begin
    team:= teamsList;
    i:= 0;
    while (i < teamsNumber) and (team^.teamName <> s) do
    begin
        inc(team);
        inc(i)
    end;

    if i < teamsNumber then teamByName:= team else teamByName:= nil
end;

procedure freeTeamsList;
begin
    if teamsList <> nil then
        FreeMem(teamsList, sizeof(teamsList^) * teamsNumber)
end;

procedure sendTeam(var team: TTeam);
var i: Longword;
begin
    with team do
    begin
        sendNetLn('ADD_TEAM');
        sendNetLn(teamName);
        sendNetLn(IntToStr(color));
        sendNetLn(grave);
        sendNetLn(fort);
        sendNetLn(voice);
        sendNetLn(flag);
        sendNetLn(IntToStr(botLevel));
        for i := 0 to 7 do
        begin
            sendNetLn(hedgehogs[i].name);
            sendNetLn(hedgehogs[i].hat);
        end;
        sendNetLn('')
    end;
end;

procedure removeTeam(teamName: shortstring);
begin
    sendNetLn('REMOVE_TEAM');
    sendNet(teamName)
end;

end.
