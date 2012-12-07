//argument0 = x
//argument1 = y

if(mp_grid_path(global.mapGrid, myPath, x, y, argument[0], argument[1], true))
{
    if(path_get_number(myPath) >= 2)
    {
        pathPos = 1;
        gotoX = path_get_point_x(myPath, pathPos);
        gotoY = path_get_point_y(myPath, pathPos);
        alarm[0] = 1;
    }
}
else
{
    pathPos = -1;
}
