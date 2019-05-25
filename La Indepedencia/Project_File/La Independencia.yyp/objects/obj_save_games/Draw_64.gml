//Crus0e

if(menu1 = 0)
{
switch (ii)
 {
    case 1:
         draw_text(170,50,string_hash_to_newline("--->"))
         
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
