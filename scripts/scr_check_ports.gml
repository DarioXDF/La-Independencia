if(distance_to_object(obj_port) < 10)
{ 
    port = obj_port
    port_id = 1
    debug_port = port_id
    return port_id
}

if(distance_to_object(obj_port_1) < 10)
{
    port = obj_port_1
    port_id = 2
    debug_port = port_id
    return port_id
}

if(distance_to_object(obj_port) > 10 && distance_to_object(obj_port_1) > 10 )
{
    port = obj_default_info
    port_id = 0
    debug_port = port_id
    return port_id
}
