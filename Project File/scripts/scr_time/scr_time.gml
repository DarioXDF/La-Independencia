
    frame++



if(frame >= 30)
{
    s++ 
    frame = 0
}


if(s == 60) 
{
    m++ 
    s = 0
}

if(m == 60) 
{
    h++ 
    m = 0
}

if(h == 24) 
{
    day++ 
    h = 0
}

//Auto Save

countdown ++

if(countdown >= 180) //1800 = 10min
{
    scr_save("savedgame.sav")
    countdown = 0
}

