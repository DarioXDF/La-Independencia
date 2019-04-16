
//check for interaction
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


//Trade menu
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