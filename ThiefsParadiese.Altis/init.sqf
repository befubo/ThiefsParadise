execVM"PF\init.sqf";
player setVariable ["playerPickUp", 0, true];
depot setVariable ["storedValue", 0, true];

counter = 0;

//_PlayerStart = player onMapSingleClick;
//player setPos (getPos _pos);
//hint format ["Es hat geklickt: %1", _PlayerStart];








GOM_fnc_lockBuildingDoor = {
	params ["_building","_door"];
	_building addAction ["<img size='2' image='res\unlock.paa'/>",{
		params ["_object","_caller","_ID","_door"];
		if (_object in (_caller getVariable ["GOM_fnc_keyRing",[]])) exitWith {
			_object removeAction _ID;
			_object setVariable [format ["bis_disabled_%1",_door],0,true];
			_unlockAction = [_object,_door,_caller] call GOM_fnc_unlockBuildingDoor;
			};
		},_door,6,true,true,"","_this isEqualTo vehicle _this",15,false,_door];
	};

GOM_fnc_unlockBuildingDoor = {
	_rand = random [10, 15, 20];
	_rander = _rand + 0.5;
	_object setVariable [format ["bis_disabled_%1",_door],1,true];
	success = 0;
	[_rand, [], {success = 1}, {success = 0}, "Türe aufbrechen"] call ace_common_fnc_progressBar;
	sleep _rander;
	if(success == 1) exitWith {
		_object setVariable [format ["bis_disabled_%1",_door],0,true];
		playSound "Click";
		};

	if(success == 0) exitWith {
		_object setVariable [format ["bis_disabled_%1",_door],1,true];
		params ["_building","_door"];
		_building addAction ["<img size='2' image='res\unlock.paa'/>",{
			params ["_object","_caller","_ID","_door"];
			if (_object in (_caller getVariable ["GOM_fnc_keyRing",[]])) exitWith {
				_object removeAction _ID;
				_object setVariable [format ["bis_disabled_%1",_door],0,true];
				_unlockAction = [_object,_door,_caller] call GOM_fnc_unlockBuildingDoor;
				};
			},_door,6,true,true,"","_this isEqualTo vehicle _this",15,false,_door];
		};
	};


GOM_fnc_initBuildingDoors = {
		params ["_building","_owner"];
		//this adds the building to the specified player so he can unlock the doors
		_alreadyOwned = _owner getVariable ["GOM_fnc_keyRing",[]];
		_alreadyOwned pushBackUnique _building;
		_owner setVariable ["GOM_fnc_keyRing",_alreadyOwned,true];
		//grabbing all valid doors
		_selectionNames = selectionNames _building;
		_doors = _selectionNames select {toUpper _x find "DOOR" >= 0 AND toUpper _x find "HANDLE" == -1};
		{
			//lock all doors and add the actions
			_building setVariable [format ["bis_disabled_%1",_x],1,true];
			_lock = [_building,_x] call GOM_fnc_lockBuildingDoor;
		} forEach _doors;
	};
	