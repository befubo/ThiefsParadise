if(goggles player != "G_Balaclava_blk") exitWith {
hint "Kein Balaclava an!";
};

if(goggles player == "G_Balaclava_blk") exitWith {


_rand = random [1, 3, 5];
_rander = _rand + 0.5;
success = 0;
	[_rand, [], {success = 1}, {success = 0}, "Diebesgut einpacken"] call ace_common_fnc_progressBar;
	sleep _rander;
		arg = _this select 3;
		_PickUpOld = player getVariable "playerPickUp";
		_PickUpNew = _PickUpOld + arg;
		
		
	
	
		if(success == 1 && _PickUpNew <= 5000) then {
		deleteVehicle (_this select 0);
		player setVariable ["playerPickUp", _PickUpNew];
		hint format ["Beute im Wert von %1€ aufgenommen", arg];
		};

		if(_PickUpNew > 5000) exitWith {
		hint "Beutetasche voll!";
		};
		
	};