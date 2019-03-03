//Crus0e

scr_main_menu(1,0,0)
switch (ii)
    {
        case 1:
        if(keyboard_check_pressed(vk_enter))
        {
            room_goto(5)
            
        }
    break;
    
        case 2:
        if(keyboard_check_pressed(vk_enter))
        {
           room_goto(4)
            
            
        }
    }
    
if(keyboard_check_pressed(global.c_esc))
        {
           room_goto(4)
            
            
        }

