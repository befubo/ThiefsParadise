_clicker = _this select 0;
_position = _this select 1;

_playerGrp = group player;
hint format ["Es hat geklickt: %1", _clicker];

player setpos (_position);
depot setPos (_position);

openMap [false, false];