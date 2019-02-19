//arrays
menu_interaction[0] = "Trade"
menu_interaction[1] = "Exit"

i = array_length_1d(menu_interaction)

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
