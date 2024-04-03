if(timer == 0)
{
	instance_create_depth(x,y,-5000,obj)
	obj.targetX = targetX
	obj.targetY = targetY
	obj.sprite_index = sPassed;
}
timer -= 1;