if(state_grabbed)
depth = -5000
else
depth = -(3000 - y);




if(go)
{

	x = lerp(x,targetX,s*targetX/(targetX+targetY))
	y = lerp(y,targetY,s*targetY/(targetX+targetY))
	if(abs(x - targetX) < .01 && (y - targetY) < .01)
	{
		x = targetX
		y = targetY
		go = 0;	
		if(loadedFlip)
		{
			sprite_index = loadedFlip
			loadedFlip = 0;
		}
	}
}
if(!state_active)
{
	if(image_xscale > 1)
	{
		image_xscale -= .04;
		image_yscale -= .04;
	}
return;
}

if(place_meeting(x,y,obj_cursor))
{
	if(global.handInUse && !state_grabbed)
	return;
	if(mouse_check_button_pressed(mb_left))
	{
		global.handInUse = 1;
		state_grabbed = 1;
		homeX = x
		homeY = y
		depth = -4000;
	}
	if(image_xscale < 1.15)
	{
		image_xscale += .04;
		image_yscale += .04;
	}
}
else if((image_xscale > 1) && !state_grabbed)
{
		image_xscale -= .04;
		image_yscale -= .04;
}

if(state_grabbed)
{
	go = 1;
	targetX = mouse_x
	targetY = mouse_y
	if(mouse_check_button_released(mb_left))
	{
		if(y < 1475 && y > 1420 && x >1660 && x < 1725)
		{
			sprite_index = laidDownSprite;
			targetY = 1455;
			targetX = 1696;
			global.controllerID.playCards = 1;
			global.controllerID.cardPlayedID = id;
			state_played = 1;
			show_debug_message(n)
		}
		else
		{
		targetY = homeY
		targetX = homeX
		}
		state_grabbed = 0;
		global.handInUse = 0;
		depth = -targetY;
	}
		
}








