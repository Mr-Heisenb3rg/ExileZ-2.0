// ExileZ 2.0 by Patrix87 of http:\\multi-jeux.quebec //
if (hasInterface) exitwith {};
private ["_nPlayer", "_sTime"];
sleep 120;
while {true} do {{if (isPlayer _x) then {if (alive _x) then {nul = [_x] spawn HarassingZombiesSpawn;}; };
_nPlayer = count (allPlayers - entities "HeadlessClient_F");
if (Debug) then {diag_log format["ExileZ 2.0: %1 Player in game.",_nPlayer]; };
if (_nPlayer < 1) then{
if (Debug) then {diag_log format["ExileZ 2.0: Waiting %1 seconds.",HZFrequency]; };sleep HZFrequency;}
else{_sTime = round (HZFrequency / _nPlayer);
if (Debug) then {diag_log format["ExileZ 2.0: Waiting %1 seconds.",_sTime]; };sleep _sTime;}; } forEach (allPlayers - entities "HeadlessClient_F");sleep 0.1;};
