// GL: Finds nearest enemy within aggro range
// @param none
// @return true if found, false if not found

var nearestEnemy;
targetEnemy = noone;
//nearestEnemy = instance_nearest(x,y,baseUnit);

for(h = 0; h < instance_number(baseUnit); h += 1)
{
    nearestEnemy = instance_find(baseUnit,h);
    if(nearestEnemy.owner == PLAYER_1 && distance_to_object(nearestEnemy) <= aggroRange)
    {
        targetEnemy = nearestEnemy;
        return true;
    }
}
return false;
