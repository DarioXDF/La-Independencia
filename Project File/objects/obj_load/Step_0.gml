//Crus0e

if(keyboard_check_pressed(ord("L")))
{
    scr_load("savedgame.sav")
}

if(global.first_start = 0)
{
    scr_load("savedgame.sav")
    global.first_start = 1
}





