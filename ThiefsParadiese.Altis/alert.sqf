hint "alarm!";

_position = getPos _this;

_x = _position select 0;
_y = _position select 1;

_markerstr = createMarker ["markername",[_x,_y]];
_markerstr setMarkerShape "ICON";
_markerstr setMarkerType "hd_warning";
_markerstr setMarkerColor "ColorRed";

MISSION_ROOT = call { private "_arr"; _arr = toArray str missionConfigFile; _arr resize (count _arr - 15); toString _arr }; playSound3D [MISSION_ROOT + "sound\alarm.mp3", _building, true, getPos _building, 9, 1.1, 50];