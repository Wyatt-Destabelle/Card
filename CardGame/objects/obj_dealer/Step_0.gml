if(state_Shuffle)
{
	if(timer_Shuffle)
	timer_Shuffle -= 1
	else
	{
	if(create)
		c = instance_create_depth(x,y - (n*4),-5,obj_card)
	else
		c = array_pop(deckArray);
	array_push(deckArray,c);
	c.sprite_index = sprite_cardDeck;
	timer_Shuffle = 5;
	n += 1;
	if(n == 18)
	{
		state_Shuffle = 0;
		n =0;
		create = 0;
	}
	}
}

if(keyboard_check_pressed(ord("D")))
{
	global.enemyID.emptyHand = 1;
	global.playerID.emptyHand  = 1;
state_Deal = 2;
}

if(state_Deal)
{
	if(timer_Deal)
		timer_Deal -= 1;
	else
	{		
		if(state_Deal = 2)
		{
		c = array_pop(deckArray);
		c.sprite_index=sprite_card
		c.state_hot = 1;
		c.goTo(global.playerID.x+(200 * n),global.playerID.y);
		array_push(global.playerID.playerHand,c);
		n += 1
		timer_Deal = 10;
		}
		else
		{
		c = array_pop(deckArray);
		c.sprite_index=sprite_card
		c.image_xscale = .7;
		c.image_yscale = .7;
		c.goTo(global.enemyID.x+(130 * n),global.enemyID.y);
		array_push(global.enemyID.enemyHand,c);
		n += 1
		timer_Deal = 10;
		}
	}
	
	if(n == 3)
	{
		n = 0;
		state_Deal -= 1;
		timer_Deal = 15;
	}
}






