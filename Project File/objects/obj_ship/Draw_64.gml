//Crus0e

//Debug Mode

if(Debug = 1)
{
    draw_text(50,30,string_hash_to_newline("Frames:"))
    draw_text(120,30,string_hash_to_newline(obj_default_info.frame))
    draw_text(150,30,string_hash_to_newline("Seconds:"))
    draw_text(228,30,string_hash_to_newline(obj_default_info.s))
    draw_text(258,30,string_hash_to_newline("Minutes:"))
    draw_text(330,30,string_hash_to_newline(obj_default_info.m))
    draw_text(350,30,string_hash_to_newline("Hours:"))
    draw_text(403,30,string_hash_to_newline(obj_default_info.h))
    draw_text(423,30,string_hash_to_newline("Days:"))
    draw_text(473,30,string_hash_to_newline(obj_default_info.day))


    draw_text(50,50, string_hash_to_newline("speed:"))
    draw_text(120,50, string_hash_to_newline(sp))
    draw_text(50,70,string_hash_to_newline("Health:"))
    draw_text(120,70, string_hash_to_newline(hp))
    draw_text(50,90,string_hash_to_newline("PortG:"))
    draw_text(120,90,string_hash_to_newline(obj_port.gold))
    draw_text(50,110,string_hash_to_newline("SchipG:"))
    draw_text(120,110, string_hash_to_newline(gold))
    draw_text(50,130,string_hash_to_newline("Port:"))
    draw_text(120,130,string_hash_to_newline(debug_port))
    draw_text(50,150,string_hash_to_newline("Iron_port_0:"))
    draw_text(180,150,string_hash_to_newline(obj_port.Iron))
    draw_text(50,170,string_hash_to_newline("Iron_Mine:"))
    draw_text(180,170,string_hash_to_newline(obj_port.Iron_mine))
    
}

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



