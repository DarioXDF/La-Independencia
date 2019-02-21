/// @arg "savefile_name.sav"
save_name = argument0

if (file_exists(save_name))
{
    var _wrapper = loadJSONFromFile(save_name)
    var _list = _wrapper[? "ROOT"];
    for (var i = 0; i < ds_list_size(_list); i++)
    {
        var _map = _list[| i];
        
        var _obj = _map[? "obj"];
        with(_obj)
        {
        //Form: x = _map[? "x"]
        //Time
            obj_default_info.frame = _map[? "obj_default_info.frame"]
            obj_default_info.s = _map[? "obj_default_info.s"]
            obj_default_info.m = _map[? "obj_default_info.m"]
            obj_default_info.h = _map[? "obj_default_info.h"]
            obj_default_info.day = _map[? "obj_default_info.day"]
            
        //ship
            //Ship states
            obj_ship.sp = _map[? "obj_ship.sp"]
            obj_ship.x = _map[? "obj_ship.x"];
            obj_ship.y = _map[? "obj_ship.y"];
            obj_ship.direction = _map[? "obj_ship.direction"]
            obj_ship.image_angle = _map[? "obj_ship.image_angle"]
            obj_ship.max_hp = _map[? "obj_ship.max_hp"];
            obj_ship.hp = _map[? "obj_ship.hp"];
            obj_ship.ship_speed = _map[? "obj_ship.ship_speed"];
            obj_ship.ship_turn = _map[? "obj_ship.ship_turn"];
            //Inventory
            obj_ship.gold = _map[? "obj_ship.gold"];
            
        //Player
            obj_ship.name = _map[? "obj_ship.name"]
            
        //Port
            //Island Economy
            obj_port.gold = _map[? "obj_port.gold"]
            //Inventory Island
            obj_port.Iron = _map[? "obj_port.Iron"]
            //Inventory Mines
            obj_port.Iron_mine = _map[? "obj_port.Iron_mine"]
            //Amount of Mines
            obj_port.Mines = _map[? "obj_port.Mines"]
            //Prices for trading
            obj_port.Iron_price = _map[? "obj_port.Iron_price"]
            //Work power
            obj_port.Worker = _map[? "obj_port.Worker"]
            obj_port.work_power = _map[? "obj_port.work_power"]
            
        //Port1
            //Island Economy
            obj_port_1.gold = _map[? "obj_port_1.gold"]
            //Islaned Inventory
            obj_port_1.Iron = _map[? "obj_port_1.Iron"]
    }
        
    }
    
    ds_map_destroy(_wrapper);
}
