//Crus0e

work_power = (Worker * 2 / Mines) / 100

Iron_mine = Iron_mine + (work_power * 10 / 60 / 30) // Iron = Produktion in % * Anzahl der Ware / Sekunden / Frames

if (Iron_mine >= 10)
{
    Iron = Iron + 10
    Iron_mine = Iron_mine - 10
}

if (Iron >= 20)
{
    obj_port_1.Iron = obj_port_1.Iron + 15
    Iron = Iron - 15
    gold = gold + (15 * Iron_price)
    obj_port_1.gold = - (15 * Iron_price)
    
}

