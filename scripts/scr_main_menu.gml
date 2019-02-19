//arrays
menu_main[0] = "Start Game"
menu_main[1] = "Options"
menu_main[2] = "Exit"

menu_options[0] = "Controlls"
menu_options[1] = "Back"

menu_controlls[0] = "Speed up"
menu_controlls[1] = "Speed down"
menu_controlls[2] = "Turn Left"
menu_controlls[3] = "Turn Right"
menu_controlls[4] = "Debug Mode"
menu_controlls[5] = "Interact"
menu_controlls[6] = "Back"

//get Menu id
if(menu = 0)
{
i = array_length_1d(menu_main)
}

if(menu = 1)
{
i = array_length_1d(menu_options)
}

if(menu = 2)
{
i = array_length_1d(menu_controlls)
}

// move menu curser
if(keyboard_check_pressed(ord("W")))
{
 if(ii != 1)
 {
    ii = ii - 1
    
 }   
 else 
 {
    ii = i
    
    
 }
 }
 if(keyboard_check_pressed(ord("S")))
 {
    
    if(ii != i)
    {
        
        ii = ii + 1
        
    }
    else
    {
        ii = 1
        
    }
    
 }
 

