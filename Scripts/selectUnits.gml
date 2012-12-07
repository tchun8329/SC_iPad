//argument0 = x1
//argument1 = y1
//argument2 = x2
//argument3 = y2
//argument4 = list
var i, list, unit, selectorLeft, selectorTop, selectorRight, selectorBottom, unitCount;

list = argument[4];
selectorLeft = min(argument[0], argument[2]);
selectorTop = min(argument[1], argument[3]);
selectorRight = max(argument[0], argument[2]);
selectorBottom = max(argument[1], argument[3]);

if(selectorRight - selectorLeft != 0)
{
    if(selectorBottom - selectorTop != 0)
    {
        unitCount = instance_number(baseUnit);
        for(i = 0; i < unitCount; i += 1)
        {
            unit = instance_find(baseUnit, i);
      
            if(ds_list_find_index(list, unit) < 0)
            {
                if(unit.x > selectorLeft && unit.x < selectorRight)
                {
                    if(unit.y > selectorTop && unit.y < selectorBottom)
                    {
                        unit.selected = true;
                        ds_list_add(list, unit);
                    }
                }
            }
        }
    }
}
