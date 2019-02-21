/// @arg "savefile_name.sav"
save_name = argument0


//create a root list
var _root_list = ds_list_create();

//for every instance, create a map

//Obj_ship
with (obj_parent_save)
{
    var _map = ds_map_create();
    ds_list_add(_root_list,_map);
    ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
    
    var _obj = object_get_name(object_index);
    
    ds_map_add (_map,"obj",_obj);
    
    //Time
        ds_map_add (_map,"obj_default_info.frame",obj_default_info.frame);
        ds_map_add (_map,"obj_default_info.s",obj_default_info.s);
        ds_map_add (_map,"obj_default_info.m",obj_default_info.m);
        ds_map_add (_map,"obj_default_info.h",obj_default_info.h);
        ds_map_add (_map,"obj_default_info.day",obj_default_info.day);
        
    //Ship
        //Ship states
        ds_map_add (_map,"obj_ship.sp",0);
        ds_map_add (_map,"obj_ship.y",obj_ship.y);
        ds_map_add (_map,"obj_ship.x",obj_ship.x);
        ds_map_add (_map,"obj_ship.direction",obj_ship.direction);
        ds_map_add (_map,"obj_ship.image_angle",obj_ship.image_angle);
        ds_map_add (_map,"obj_ship.max_hp",obj_ship.max_hp);
        ds_map_add (_map,"obj_ship.hp",obj_ship.hp);
        ds_map_add (_map,"obj_ship.ship_speed",obj_ship.ship_speed);
        ds_map_add (_map,"obj_ship.ship_turn",obj_ship.ship_turn);
        //Inventory
        ds_map_add (_map,"obj_ship.gold",obj_ship.gold);
        
    //Player
        ds_map_add (_map,"obj_ship.name",obj_ship.name);
        
    //Port   
        //Island Economy
        ds_map_add (_map,"obj_port.gold",obj_port.gold);
        //Inventory Island
        ds_map_add (_map,"obj_port.Iron",obj_port.Iron);
        //Inventory Mines
        ds_map_add (_map,"obj_port.Iron_mine",obj_port.Iron_mine);
        //Amount of Mines
        ds_map_add (_map,"obj_port.Mines",obj_port.Mines);
        //Prices for trading
        ds_map_add (_map,"obj_port.Iron_price",obj_port.Iron_price);
        //Work power
        ds_map_add (_map,"obj_port.Worker",obj_port.Worker);
        ds_map_add (_map,"obj_port.work_power",obj_port.work_power);
        
    //Port1
        //Island Economy
        ds_map_add (_map,"obj_port_1.gold",obj_port_1.gold);
        //Islaned Inventory
        ds_map_add (_map,"obj_port_1.Iron",obj_port_1.Iron);
        
}

//Wrap the root list up in a map
var _wrapper = ds_map_create();
ds_map_add_list(_wrapper,"ROOT",_root_list);

//Save all
var _string = json_encode(_wrapper);
SaveStringToFile( save_name, _string);

//Nuke Data
ds_map_destroy(_wrapper);


