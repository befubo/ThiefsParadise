_unit = player;
_unit addAction ["<img size='2' image='res\money.paa'/>", "[] spawn BFO_fnc_showStolenValueDialog;"];
openMap [true, true];

ClickOnMapEH = addMissionEventHandler ["MapSingleClick", {_pos = (_this select 1); [_unit, _pos] exec "spawner.sqf"; openMap [false, false]; removeMissionEventHandler ["MapSingleClick",ClickOnMapEH];}];