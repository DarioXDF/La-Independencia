
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

