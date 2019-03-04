//Crus0e

draw_text(50,50,string_hash_to_newline(menu1))
if(menu1 = 0)
{
switch (ii)
 {
    case 1:
         draw_text(170,50,string_hash_to_newline("--->"))
         if(keyboard_check_released(vk_enter))
         {
            if(!file_exists("savedgame.sav"))
            {
                
                X = 80
            }
            
         }
         if (X >= 0)
            {
                draw_text(200, 150, string_hash_to_newline("No Save game found"))
                X = X - 1
            }
    break;
    
    case 2:
        draw_text(170,70,string_hash_to_newline("--->"))
       
    break;
    }

    
draw_text(200,50,string_hash_to_newline(menu_Load[0]))
draw_text(200,70,string_hash_to_newline(menu_Load[1]))
}

if(menu1 = 1)
{
switch (ii)
    {
        case 1:
        
            draw_text(220,70,string_hash_to_newline("--->"))
        break;
        case 2:
            
            draw_text(320,70,string_hash_to_newline("--->"))
        break;
    }
draw_text(200,50, string_hash_to_newline("Your savegame Will be deleted"))
draw_text(250,70, string_hash_to_newline(menu_newgame[0]))
draw_text(350,70, string_hash_to_newline(menu_newgame[1]))
}

