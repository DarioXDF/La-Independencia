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