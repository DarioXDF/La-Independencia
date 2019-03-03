//Crus0e

scr_main_menu(2,0,0)
switch (ii)
    {
        case 1:
                if(keyboard_check_pressed(vk_enter))
                {
                    
                    room_goto(2)
                    global.pos = 1
                    
                }
    break;
    
        case 2:
                if(keyboard_check_pressed(vk_enter))
                {
                    room_goto(2)
                    global.pos = 2
                }
        
    break;
    
        case 3:
                if(keyboard_check_pressed(vk_enter))
                {
                    room_goto(2)
                    global.pos = 3
                }
        
    break;
    
        case 4:
                if(keyboard_check_pressed(vk_enter))
                {
                    room_goto(2)
                    global.pos = 4
                }
        
    break;
    
        case 5:
                if(keyboard_check_pressed(vk_enter))
                {
                    room_goto(2)
                    global.pos = 5
                }
        
    break;
    
        case 6:
                if(keyboard_check_pressed(vk_enter))
                {
                    room_goto(2)
                    global.pos = 6
                }
        
    break;
    
        case 7:
                if(keyboard_check_pressed(vk_enter))
                {
                    room_goto(3)
                }
        
            
        }
        
if(keyboard_check_pressed(global.c_esc))
        {
           room_goto(3)
            
            
        }
    

