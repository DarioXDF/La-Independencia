//Crus0e

if(menu1 = 0)
{
scr_main_menu(3,0,0)

switch (ii)
    {
        case 1:
        
        if(keyboard_check_released(vk_enter))
        {
            if(file_exists("savedgame.sav"))
            {
                room_goto(1)
            }
        }
    break;
    
        case 2:
        if(keyboard_check_released(vk_enter))
        {
            if(!file_exists("savedgame.sav")) 
           {
               room_goto(7)
           }
        else
           {
            {
                menu1 = 1
            }
           }
        }
        
        break;
    }

        
}
else
{
scr_main_menu(4,1,0)
    switch (ii)
        {
         case 1:
            if(keyboard_check_released(vk_enter))
            {
                file_delete("savedgame.sav")
                room_goto(7)
            }
            
         break;
         
         case 2:
            if(keyboard_check_released(vk_enter))
            {
                menu1 = 0
                ii = 1
            }
         break;
        }
}

if(keyboard_check_released(global.c_esc))
        {
            if(menu1 = 0)
            {
            room_goto(4)
            }
            else
            {
                menu1 = 0
            }
            
        }


