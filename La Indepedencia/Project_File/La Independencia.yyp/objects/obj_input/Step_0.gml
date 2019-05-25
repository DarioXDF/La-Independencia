//Crus0e

if(input_abfrage = 1)
{
    scr_get_input();
}
else
{
    if(keyboard_check_pressed(vk_enter))
    {
        if(global.pos = 1)
        {
            global.c_speed_up = ord(input)
            global.c_speed_up_display = input
        }
        
        if(global.pos = 2)
        {
            global.c_speed_down = ord(input)
            global.c_speed_down_display = input
        }
        
        if(global.pos = 3)
        {
            global.c_left = ord(input)
            global.c_left_display = input
        }
        
        if(global.pos = 4)
        {
            global.c_right = ord(input)
            global.c_right_display = input
        }
        
        if(global.pos = 5)
        {
            global.c_debug = ord(input)
            global.c_debug_display = input
        }
        
        if(global.pos = 6)
        {
            global.c_interact = ord(input)
            global.c_interact_display = input
        }
        
        room_goto(5)
    }
}


