if(goggles player != "G_Balaclava_blk") exitWith {
hint "Kein Balaclava an!";
};

if(goggles player == "G_Balaclava_blk") exitWith {

success = 0;
[5, [], {success = 1}, {success = 0}, "Knacke Tresor..."] call ace_common_fnc_progressBar;
sleep 5.5;
rand = random [1, 5, 10];
price = round(random [10000, 25000, 50000]);
if(rand >= 1 && success == 1)  exitWith {
		_this select 0 removeAction 0;
		hint format ["Du hast die Bank um %1€ erleichtert", price];
		_PickUpOld = player getVariable "playerPickUp";
		_PickUpCounter = _PickUpOld + price;
		player setVariable ["playerPickUp", _PickUpCounter];
		};
		
		if(success == 0) exitWith {
		};
		
if(rand < 1 && success == 1)  exitWith {
		_this select 0 removeAction 0;
		hint format ["Der Tresor ist leer!"];
		};
		
		if(success == 0) exitWith {
		};
	};