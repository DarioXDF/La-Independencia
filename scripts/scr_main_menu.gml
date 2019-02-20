menu = argument0

//arrays
if(global.first_start = 1)
{
menu_main[0] = "Start Game"
}
else
{
menu_main[0] = "Continue"
}
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

menu_newgame[0] = "Yes"
menu_newgame[1] = "NO"

if(file_exists("savedgame.sav")) 
{ menu_Load[0] = "Continue" }
else
{ menu_Load[0] = "Emty Save" }

menu_Load[1] = "New Game"

//get Menu id
if(menu = 0)
{
i = array_length_1d(menu_main)
dirc = 0
}

if(menu = 1)
{
i = array_length_1d(menu_options)
dirc = 0
}

if(menu = 2)
{
i = array_length_1d(menu_controlls)
dirc = 0
}

if(menu = 3)
{
i = array_length_1d(menu_Load)
dirc = 0
}

if(menu = 4)
{
i = array_length_1d(menu_newgame)
dirc = 1
}

// move menu curser UD
if(dirc == 0)
{
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
 }
 else //Move LR
 {
    if(keyboard_check_pressed(ord("A")))
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
 if(keyboard_check_pressed(ord("D")))
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
 }
 

