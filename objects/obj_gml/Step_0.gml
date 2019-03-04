/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(!instance_exists(obj_coin)){
	switch(top_bot){
		case 0:
			instance_create_depth(room_width-64,64,0,obj_coin);
			instance_create_depth(room_width-128,128,0,obj_coin);
			instance_create_depth(room_width-192,192,0,obj_coin);
			top_bot = 1;
		break;
		case 1:
			instance_create_depth(room_width-64,room_height-64,0,obj_coin);
			instance_create_depth(room_width-128,room_height-128,0,obj_coin);
			instance_create_depth(room_width-192,room_height-192,0,obj_coin);
			top_bot = 2;
		break;
		case 2:
			instance_create_depth(64,room_height-64,0,obj_coin);
			instance_create_depth(128,room_height-128,0,obj_coin);
			instance_create_depth(192,room_height-192,0,obj_coin);
			top_bot = 3;
		break;
		case 3:
			instance_create_depth(64,64,0,obj_coin);
			instance_create_depth(128,128,0,obj_coin);
			instance_create_depth(192,192,0,obj_coin);
			top_bot = 0;
		break;
	}
}