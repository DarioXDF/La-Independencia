//Crus0e

scr_main_menu(0,0,0)



 switch (ii)
 {
    case 1:
        if(keyboard_check_released(vk_enter))
        {
            if(global.first_start = 1)
            {
            room_goto(6)
            }
            else
            {
            room_goto(1)
            }        
        }
    break;
    
    case 2:
        if(keyboard_check_released(vk_enter))
        {
            room_goto(3)       
        }
    break;
    
    case 3:
        if(keyboard_check_released(vk_enter))
        {
            game_end()        
        }
    break;
             
        
}





