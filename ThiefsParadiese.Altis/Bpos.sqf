_this = chair_1;
_build = (nearestObjects [getMarkerPos "building_1", "house", 2]);
 
if ( (_build buildingPos 1) distance [0,0,0] > 0 ) then {
    chair_1 setPos (_build buildingPos 1);
}