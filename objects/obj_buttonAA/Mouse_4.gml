/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(obj_gml.coins >= costs){
	obj_gml.coins -= costs;
	if (coinsAddedA = 0) {
	coinsAddedA++;
	instance_create_depth(room_width/2, 16, 0, obj_progressAA);
	} else {
		coinsAddedA = coinsAddedA*2;
	}
	costs = costs*2;
}