//Crus0e

scr_check_ports();  


//speed berechnung
speed = sp * ship_speed;
//Controlls
if(trade_menu == 0)
{
    if(keyboard_check(global.c_speed_up))
    {
        if(sp < 100)
        {
            sp = sp + 1
        }
    }

    if(keyboard_check(global.c_speed_down))
    {
        if(sp > 0)
        {
            sp = sp - 1
        }
    }
    
    if (keyboard_check(global.c_left))
    {
        direction += ship_turn;
        image_angle += ship_turn; 
    }

    if (keyboard_check(global.c_right))
    {
        direction -= ship_turn;
        image_angle -= ship_turn;
    }
}
//View Port
/*if instance_exists(obj_ship)
   {
   view_object[0] = obj_ship;
   }
   */
 
//Interaction

if(scr_check_ports() > 0 && keyboard_check_pressed(global.c_interact) && sp == 0 )
{   
    if(trade_menu == 0)
    {
        trade_menu = 1
    }
    else
    {
        trade_menu = 0
    }
}
   
//Debug Mode
if(keyboard_check_pressed(global.c_debug))
{
    if(Debug = 0)
    {
        Debug = 1
    }
    else
    {
        Debug = 0
    }
}

//back to Menu
if(keyboard_check_pressed(global.c_esc))
{
    scr_save("savedgame.sav")
    global.first_start = 0
    room_goto(4)
}
// Player dead

if(hp <= 0)
{
    instance_destroy()
}

/* */
//Crus0e
 
 if(trade_menu == 1)
        {
            
            //Menu
                scr_interaction_menu();
            
                switch (ii)
                {
                    case 1:
                    if(keyboard_check(vk_enter))
                        {
                            gold = gold + port.gold;
                            port.gold = port.gold - port.gold;
                        }
                        
                    case 2:
                    if(keyboard_check(vk_enter))
                        {
                            trade_menu = 0
                        }
            }
        }

/* */
/*  */
