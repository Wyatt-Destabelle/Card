direction = point_direction(x,y,targetX,targetY)
sprite_index = global.SuperWin;
if(point_distance(x,y,targetX,targetY) < 5)
{
	instance_create_depth(x,y,-6000,explosion);
	instance_destroy()
}





