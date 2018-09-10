disableSerialization;

createDialog "befubo_ShowStolenValue_Dialog";

waitUntil {!isNull (findDisplay 9999);};

_stolenValueText = (findDisplay 9999) displayCtrl 1100;
_stolenValueText ctrlSetStructuredText parseText "Beute dabei:";

_stolenValue = (findDisplay 9999) displayCtrl 1102;
_PickUp = player getVariable "playerPickUp";
_stolenValue ctrlSetStructuredText parseText format ["%1€", _PickUp];


_storedValueText = (findDisplay 9999) displayCtrl 1101;
_storedValueText ctrlSetStructuredText parseText "Beute im Bunker:";

_storedValue = (findDisplay 9999) displayCtrl 1103;
_Stored = depot getVariable "storedValue";
_storedValue ctrlSetStructuredText parseText format ["%1€", _Stored];
