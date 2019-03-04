//Crus0e

//Interact
if(trade_menu = 1)
{
    menu_color = make_color_rgb(238,55,55)
    draw_set_color(menu_color)
    draw_rectangle(50,50,975,720,false)
    draw_set_color(c_white)
    //draw menu
    
    switch (ii)
    {
        case 1:
            draw_text(170,50,string_hash_to_newline("--->"))
        break;
    
        case 2:
            draw_text(170,70,string_hash_to_newline("--->"))
        break;

    }
    
    draw_text(200,50,string_hash_to_newline(menu_interaction[0]))
    draw_text(200,70,string_hash_to_newline(menu_interaction[1]))

}



