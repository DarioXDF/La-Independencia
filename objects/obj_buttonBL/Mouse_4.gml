/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(obj_gml.coins >= costs){
	obj_gml.coins -= costs;
	costs = costs*2;
	if (lvl = 0) {
		instance_create_depth(room_width/2, 80, 0, obj_progressBL);
	}
	lvl++;
	bought = true;
}