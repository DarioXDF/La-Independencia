//Crus0e

user_name = ""
first_name = ""
last_name = ""
char_x = 200
char_y = 300
char_scale = 4
b = 0
c = 0
d = 0

for(i = 0; i< 11; i++)
{
    char_pos[i] = 0
}

for(i = 0; i < 9; i++)
{
   editor_x[i] = 0 
}





if(!file_exists("savedgame.sav") ) 
{
    if(file_exists("startgame.sav"))
    {
        var _wrapper = loadJSONFromFile("startgame.sav")
        var _list = _wrapper[? "START"];
        for (var i = 0; i < ds_list_size(_list); i++)
        {
            var _start = _list[| i];
            with(obj_ship)
            {
                
                user_name = _start[? "user_name"]
                first_name = _start[? "first_name"]
                last_name = _start[? "last_name"]
                b = _start[? "b"]
                d = _start[? "d"]
                char_pos[0] = _start[? "char_pos_0"]
                char_pos[1] = _start[? "char_pos_1"]
                char_pos[2] = _start[? "char_pos_2"]
                char_pos[3] = _start[? "char_pos_3"]
                char_pos[4] = _start[? "char_pos_4"]
                char_pos[5] = _start[? "char_pos_5"]
                char_pos[6] = _start[? "char_pos_6"]
                char_pos[7] = _start[? "char_pos_7"]
                char_pos[8] = _start[? "char_pos_8"]
                char_pos[9] = _start[? "char_pos_9"]
                char_pos[10] = _start[? "char_pos_10"]
                char_pos[11] = _start[? "char_pos_11"]
                
                for(i = 0; i < b; i++ )
                    {
                        for(iii = 0; iii < char_pos[i]; iii++)
                        {
                            position = string("char[") + string(i) + string(",") + string(iii) + string("]")
                            char[i,iii] = _start[? string("char[") + string(i) + string(",") + string(iii) + string("]")]
                            
                        }
                        
                        
                        
                    }
                    
                for(i = 0; i < d ; i++)
                    {
                        position = string("editor_x[") + string(i) + string("]")
                        editor_x[i] = _start[? position]
                    }
               
                
                
                
                
                
                
            }
        }
        ds_map_destroy(_wrapper);
    }
}





sp = 0;
max_hp = 1000;
hp = max_hp;
ship_speed = 0.10;  //shiff speed für basic_ship
ship_turn = 5;      //shiff turn_speed für basic_ship
port = obj_default_info;
port_id = 0
trade_menu = 0
ii = 1
//Inventar

gold = 0;

//Debug

Debug = 0;
debug_port = 0;




