//Crus0e

scr_check_ports();  
scr_obj_ship_movement();
scr_obj_ship_interact();

//Controlls
if(trade_menu == 0)
{
    scr_obj_ship_controlls();
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

