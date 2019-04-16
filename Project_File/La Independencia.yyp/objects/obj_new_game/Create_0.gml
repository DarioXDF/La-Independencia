//Crus0e

name_set = 0
user_name = ""
first_name = ""
last_name = ""

lchar = 0
ii = 1
input_abfrage = 0
input = 0
vk_input = 0
curser_line = 0
char_editor = 0
b = 0 // anzahl der einträge
c = 0 // position in array
length_of_chars = 0
length_of_chars_first = 0
length_of_chars_last = 0


char_x = 200
char_y = 300
char_scale = 4


editor_y = 0
for(i = 0; i < 9; i++)
{
   editor_x[i] = 0 
}


for(i = 0; i<20; i++)
{
    pos[i] = 0
}

for(i = 0; i<20; i++)
{
    pos_first[i] = 0
}

for(i = 0; i<20; i++)
{
    pos_last[i] = 0
}

pos[20] = 1
pos_first[20] = 1
pos_last[20] = 1

//anzahl der möglichkeiten



//array char
    //ebene 0 = gender
        char[0,0] = "Male"
        char[0,1] = "Female"
    //ebene 1 = hair style
        char[1,0] = "standard"                                  
    //ebene 2 = hair color
        char[2,0] = spr_hair_placeholder_black                  
        char[2,1] = spr_hair_placeholder_yellow                 
        char[2,2] = spr_hair_placeholder_green                 
        char[2,3] = spr_hair_placeholder_purplegray               
    //ebene 3 = eye style
        char[3,0] = "standard"                                  
    //ebene 4 = eye color
        char[4,0] = spr_eyes_placeholder_white                 
        char[4,1] = spr_eyes_placeholder_green                  
        char[4,2] = spr_eyes_placeholder_darkblue               
        char[4,3] = spr_eyes_placeholder_purplegray             
    //ebene 5 = mouth style
        char[5,0] = spr_mouth_placeholder                       
    //ebene 6 = Head
        char[6,0] = spr_head_placeholder                        
        char[6,1] = spr_head_placeholder_1                      
        char[6,2] = spr_head_placeholder_2                      
        char[6,3] = spr_head_placeholder_3                      
    //ebene 7 = Body
        char[7,0] = spr_body_placeholder                        
        char[7,1] = spr_body_placeholder_1                      
        char[7,2] = spr_body_placeholder_2                      
        char[7,3] = spr_body_placeholder_3                                                    
    //ebene 8 = skin color
        char[8,0] = ""   
        char[8,1] = ""                                     
    //options     
    char[9,0] = "Gender:"
    char[9,1] = "Hair Style:"
    char[9,2] = "Hair Color:"
    char[9,3] = "Eye Style:"
    char[9,4] = "Eye Color:"
    char[9,5] = "Mouth Style:"
    char[9,6] = "Head Type:"
    char[9,7] = "Body Type:"
    char[9,8] = "Skin Color:"
    
    //hair colors
    char[10,0] = "Black"
    char[10,1] = "Yellow"
    char[10,2] = "Green"
    char[10,3] = "Purplegray"
    
    //eye colors
    char[11,0] = "white"
    char[11,1] = "green"
    char[11,2] = "darkblue"
    char[11,3] = "purplegray"
    
   

