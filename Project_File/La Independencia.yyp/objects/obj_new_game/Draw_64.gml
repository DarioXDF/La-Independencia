//Crus0e

//Draw Lines
draw_text(50,50,string_hash_to_newline("Enter user Name:"));
for(i = 0; i < 20; i++)
{
    draw_text(200 + 15 * i,52,string_hash_to_newline("_"));
}

draw_text(50,80,string_hash_to_newline("Enter First Name:"));
for(i = 0; i < 20; i++)
{
    draw_text(200 + 15 * i,82,string_hash_to_newline("_"));
}

draw_text(50,110,string_hash_to_newline("Enter Last Name:"));
for(i = 0; i < 20; i++)
{
    draw_text(200 + 15 * i,112,string_hash_to_newline("_"));
}



scr_main_menu("none",1,20);
//enter name
if(keyboard_check_released(global.c_menu_up) && curser_line != 0)
{
    curser_line--;
	if(curser_line = 0) ii = length_of_chars;
	if(curser_line = 1) ii = length_of_chars_first;
	if(curser_line = 1) ii = length_of_chars_last;
	
}
if(keyboard_check_released(global.c_menu_up) && char_editor != 0 && editor_y = 0)
{
    char_editor--;
    curser_line = 2;
    
}

length_of_chars = 0;
for(i = 0; i<array_length_1d(pos); i++)
{
	if(pos[i] !=0)
	{
		length_of_chars++;	
	}
}

length_of_chars = 0;
for(i = 0; i<array_length_1d(pos); i++)
{
	if(pos[i] !=0)
	{
		length_of_chars_last++;	
	}
}

length_of_chars = 0;
for(i = 0; i<array_length_1d(pos_first); i++)
{
	if(pos[i] !=0)
	{
		length_of_chars_first++;	
	}
}

if(keyboard_check_released(vk_enter) ||  keyboard_check_released(global.c_menu_down))
{
    
    switch(curser_line)
    {
        case 0:
            if(name_set = 1)
            {
                user_name = "";
            }
            
            for(i = 0; i<20; i++)
            {
                if(pos[i] != 0)
                {
                    lchar++;
                }
            }
            
            for(i = 0; i<lchar; i++)
            {
                user_name = string(user_name) + string(pos[i]);
            }
            
            if(string_length(string(user_name)) < 4)
            {
                for(i = 0; i<20; i++)
            {
                if(pos[i] != 0)
                {
                    pos[i] = 0;
                }
                ii = 1;
                user_name = "";
            }
            }
            else
            {
            curser_line++;
            ii = 1;
            
            }
        break;
        
        case 1:
            if(name_set = 1)
            {
                first_name = "";
            }
            
            for(i = 0; i<20; i++)
            {
                if(pos_first[i] != 0)
                {
                    lchar++;
                }
            }
            
            for(i = 0; i<lchar; i++)
            {
                first_name = string(first_name) + string(pos_first[i]);
            }
        
            
            if(string_length(string(first_name)) < 4)
            {
                for(i = 0; i<20; i++)
            {
                if(pos_first[i] != 0)
                {
                    pos_first[i] = 0;
                }
                ii = 1;
                first_name = "";
            }
            }
            else
            {
            curser_line++;
            ii = 1;
            
            }
        break;
        
        case 2:
            if(name_set = 1)
            {
                last_name = "";
            }
            
            for(i = 0; i<20; i++)
            {
                if(pos_last[i] != 0)
                {
                    lchar++;
                }
            }
            
            for(i = 0; i<lchar; i++)
            {
                last_name = string(last_name) + string(pos_last[i]);
            }
        
            if(string_length(string(last_name)) < 4)
            {
                for(i = 0; i<20; i++)
            {
                if(pos_last[i] != 0)
                {
                    pos_last[i] = 0;
                }
                ii = 1;
                last_name = "";
            }
            }
            else
            {
            char_editor = 1;
            
            }
            
        break;
    }
    name_set = 1;
    lchar = 0;
    
    
}
//Remove
if(keyboard_check_pressed(vk_backspace) && ii != 1 )
{
    switch(curser_line)
    {
    case 0:
        pos[ii - 2] = 0;  
        ii--;
    break;
       
    case 1:
        pos_first[ii - 2] = 0;  
        ii--;
    break;
        
    case 2:
        pos_last[ii - 2] = 0; 
        ii--;
    break;
    }
    
    
}
//move in array
switch(curser_line)
{
    case 0:
        if(pos[ii - 1] != 0)
        {
            if(ii != 21) ii++;
        }
    break;
    
    case 1:
        if(pos_first[ii - 1] != 0)
        {
            if(ii != 21) ii++;
        }
    break;
    
    case 2:
        if(pos_last[ii - 1] != 0)
        {
            if(ii != 21) ii++;
        }
    break;
       
}
    

switch(ii)
{
    case ii:
        if(char_editor = 0)
        {
        if(ii - 1 = 0) draw_text(200   ,50 + (curser_line * 30),string_hash_to_newline("|"));
        else
        {
            draw_text(200 + (ii - 1) * 15  ,50 + (curser_line * 30),string_hash_to_newline("|"));
        }
        }
    break;
}


//Draw Name

for(i = 0; i<20; i++)
{
    if(pos[i] !=0)
    {
        draw_text(200 + 15 * i , 50,string_hash_to_newline(pos[i]));
    }
}

for(i = 0; i<20; i++)
{
    if(pos_first[i] !=0)
    {
        draw_text(200 + 15 * i , 80,string_hash_to_newline(pos_first[i]));
    }
}

for(i = 0; i<20; i++)
{
    if(pos_last[i] !=0)
    {
        draw_text(200 + 15 * i , 110,string_hash_to_newline(pos_last[i]));
    }
}



//Character Editor
draw_sprite_ext(char[7,editor_x[7]],image_index, char_x,char_y, char_scale, char_scale ,image_angle ,image_blend ,image_alpha);
draw_sprite_ext(char[6,editor_x[6]],image_index, char_x,char_y, char_scale, char_scale ,image_angle ,image_blend ,image_alpha);
draw_sprite_ext(char[4,editor_x[4]],image_index, char_x,char_y, char_scale, char_scale ,image_angle ,image_blend ,image_alpha);
draw_sprite_ext(char[5,editor_x[5]],image_index, char_x,char_y, char_scale, char_scale ,image_angle ,image_blend ,image_alpha);
draw_sprite_ext(char[2,editor_x[2]],image_index, char_x,char_y, char_scale, char_scale ,image_angle ,image_blend ,image_alpha);


if(char_editor = 1)
{
	
    if(keyboard_check_pressed(global.c_menu_down) && editor_y != 8)
    {
       editor_y++;
    }
    
    if(keyboard_check_released(global.c_menu_up) && editor_y != 0)
    {
        editor_y--;
    }
    
    if(keyboard_check_released(global.c_menu_left) && editor_x[editor_y] != 0)
    {
        editor_x[editor_y] --;
    }
    
    if(keyboard_check_released(global.c_menu_right))
    {
        if(editor_x[editor_y] != array_length_2d(char,editor_y) - 1)
        {
            editor_x[editor_y] ++;
        }
        else
        {
            editor_x[editor_y] = 0;
        }
    }
    draw_text(20,450 + editor_y * 30, string_hash_to_newline("--->"));
    
    if(keyboard_check_released(vk_space))
    {
        var _start_list = ds_list_create();
        with (obj_new_game)
        {
            var _start = ds_map_create();
            ds_list_add(_start_list,_start);
            ds_list_mark_as_map(_start_list,ds_list_size(_start_list)-1);
            
            //save data
                    char_pos_0 = array_length_2d(char, 0);
                    char_pos_1 = array_length_2d(char, 1);
                    char_pos_2 = array_length_2d(char, 2);
                    char_pos_3 = array_length_2d(char, 3);
                    char_pos_4 = array_length_2d(char, 4);
                    char_pos_5 = array_length_2d(char, 5);
                    char_pos_6 = array_length_2d(char, 6);
                    char_pos_7 = array_length_2d(char, 7);
                    char_pos_8 = array_length_2d(char, 8);
                    char_pos_9 = array_length_2d(char, 9);
                    char_pos_10 = array_length_2d(char, 10);
                    char_pos_11 = array_length_2d(char, 11);
                //char[]
                   
                    b = array_height_2d(char) ;
                                      
                    
                    
                    for(i = 0; i < array_height_2d(char)  ; i++ )
                    {
                        for(iii = 0; iii < array_length_2d(char,i) ; iii++)
                        {
                            position = string("char[") + string(i) + string(",") + string(iii) + string("]");
                            ds_map_add (_start, position, char[i,iii]);
                            
                        }
                        
                        
                        
                    }
                    d = array_length_1d(editor_x);
                    for(i = 0; i < array_length_1d(editor_x); i++)
                    {
                        position = string("editor_x[") + string(i) + string("]");
                        ds_map_add (_start, position, editor_x[i]);
                    }
                   
            ds_map_add (_start,"user_name", user_name);
            ds_map_add (_start,"first_name", first_name);
            ds_map_add (_start,"last_name", last_name);
            ds_map_add (_start,"b", b);
            ds_map_add (_start,"d", d);
            ds_map_add (_start,"char_pos_0", char_pos_0);
            ds_map_add (_start,"char_pos_1", char_pos_1);
            ds_map_add (_start,"char_pos_2", char_pos_2);
            ds_map_add (_start,"char_pos_3", char_pos_3);
            ds_map_add (_start,"char_pos_4", char_pos_4);
            ds_map_add (_start,"char_pos_5", char_pos_5);
            ds_map_add (_start,"char_pos_6", char_pos_6);
            ds_map_add (_start,"char_pos_7", char_pos_7);
            ds_map_add (_start,"char_pos_8", char_pos_8);
			ds_map_add (_start,"char_pos_9", char_pos_9);
            ds_map_add (_start,"char_pos_10", char_pos_10);
            ds_map_add (_start,"char_pos_11", char_pos_11);
            
           
           
            
            //wrapper
            var _wrapper = ds_map_create();
            ds_map_add_list(_wrapper,"START" ,_start_list);
            
            //Save all
            var _string = json_encode(_wrapper);
            SaveStringToFile( "startgame.sav", _string);
            
            //Nuke Data
            ds_map_destroy(_wrapper);
        }
        room_goto(1)
    }
}

for(i = 0; i < array_length_2d(char,9); i++)
{
    draw_text(50, 450 + i * 30, string_hash_to_newline(char[9,i]));
}

draw_text(200,450, string_hash_to_newline(char[0,editor_x[0]]));
draw_text(200,480, string_hash_to_newline(char[1,editor_x[1]]));
draw_text(200,510, string_hash_to_newline(char[10,editor_x[2]]));
draw_text(200,540, string_hash_to_newline(char[3,editor_x[3]]));
draw_text(200,570, string_hash_to_newline(char[11,editor_x[4]]));
draw_text(200,600, string_hash_to_newline(editor_x[5]));
draw_text(200,630, string_hash_to_newline(editor_x[6]));
draw_text(200,660, string_hash_to_newline(editor_x[7]));
draw_text(200,690, string_hash_to_newline(editor_x[8]));

draw_text(200,750, string_hash_to_newline("press Space to Complete"))
