success = 0;
[5, [], {success = 1}, {success = 0}, "Durchsuche Möbel"] call ace_common_fnc_progressBar;
sleep 5.5;
rand = random [1, 5, 10];
price = round(random [30, 80, 1000]);
if(rand >= 1 && success == 1)  exitWith {
		_this select 0 removeAction 0;
		
		_PickUpOld = player getVariable "playerPickUp";
		_PickUpCounter = _PickUpOld + price;
		player setVariable ["playerPickUp", _PickUpCounter];
		};
		
		if(success == 0) exitWith {
		};
		
if(rand < 1 && success == 1)  exitWith {
		_this select 0 removeAction 0;
		hint format ["Nichts gefunden"];
		};
		
		if(success == 0) exitWith {
		};