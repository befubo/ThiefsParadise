disableSerialization;

_PickUpOld = player getVariable "playerPickUp";
if(_PickUpOld != 0) exitWith {
	success = 0;
	[5, [], {success = 1}, {success = 0}, "Verstaue Diebesgut"] call ace_common_fnc_progressBar;
	sleep 5.5;

	if(success == 1)  exitWith {

		_PickUpOld = player getVariable "playerPickUp";
		_storedValueOld = depot getVariable "storedValue";

		_storedValueNew = _storedValueOld + _PickUpOld;
		_PickUpNew = 0;

		depot setVariable ["storedValue", _storedValueNew];
		player setVariable ["playerPickUp", _PickUpNew];
		};
		
	if(success == 0) exitWith {
		};
	
	};