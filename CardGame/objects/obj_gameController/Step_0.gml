if(sleep)
	return;
	
	
if(shufflePhase)
{
	if(uvTimer)
		uvTimer -= 1;
	else
	{
		randomize();
			i = irandom_range(0,array_length(discardPile)-1)
			c = discardPile[i]
			array_delete(discardPile,i,1);
			c.goTo(drawX,drawY - (uvN*4))
		c.sprite_index = cardBackLaidDown;
		array_push(drawPile,c);
		
		
		uvN += 1;
		uvTimer = 5
	}
	if(uvN == 18)
	{
		uvN = 0;
		shufflePhase = 0;

		drawPhase = 1;
	}
		
}

if(drawPhase)
{
	if(array_length(drawPile) == 0 && !uvN)
	{
		drawPhase = 0
		shufflePhase = 1;
		return;
	}
	if(uvTimer)
		uvTimer -= 1;
	else
	{
		uvTimer = 15;
		if(uvN < 3)
		{
			c = array_pop(drawPile);
			c.n = uvN;
			c.goTo(playerX + (uvN * 180),playerY);
			array_push(playerHand,c)
			uvN += 1;
			//c.sprite_index = cardBack;
			c.sprite_index = c.fliptoSprite 

		}
		else if(uvN < 6)
		{
			c = array_pop(drawPile);
			c.goTo(computerX + ((uvN -3) * 180),computerY);
			array_push(computerHand,c)
			uvN += 1;
			c.sprite_index = cardBack;
			 
		}
		else
		{
			array_foreach(playerHand,function(card) {card.state_active = 1;})
			drawPhase = 0
			uvN = 0;
		}
		 

		
	}
}
if(playCards)
{
	array_foreach(playerHand,function(card) {card.state_active = 0 })
	i = irandom_range(0,3-1)
	c = computerHand[i]
	array_delete(computerHand,i,1);
	c.goTo(1700,1250)
	c.loadedFlip = c.flipToLDSprite
	array_push(playField,c)
	array_push(playField,cardPlayedID);
	array_delete(playerHand,cardPlayedID.n,1);
	fight = 1;
	playCards = 0;
	uvTimer = 15;
	discardCards = 1;
}


if(discardCards)
{
		
		if(uvTimer)
		{
			if(uvTimer == 150)
			{
			if(!o)
			{

			}
			else
			{
			a = instance_create_depth(o.x,o.y,-5000,obj_thrown)
			a.targetX = t.x;
			a.targetY = t.y;
			sPassed = s;
			global.SuperWin = s;
			}
			}
		uvTimer -= 1;
		}
	else
	{
		uvTimer = 5;
		if(uvN < 2)
		{
			c = array_pop(playerHand);
			c.goTo(discardX,discardY - (uvN*4));
			c.sprite_index = c.flipFromSprite;
			array_push(discardPile,c)
		}
		else if(uvN < 4)
		{
			c = array_pop(computerHand);
			c.goTo(discardX,discardY - (uvN*4));
			c.sprite_index = cardBackLaidDown;
			array_push(discardPile,c)
		}
		else if(uvN == 4)
		{
			uvTimer = 300;

		}
		else if(uvN < 7)
		{
			c = array_pop(playField);
			c.goTo(discardX,discardY - ((uvN-1)*4));
			c.sprite_index = c.flipFromLDSprite;
			array_push(discardPile,c)
		}
		else
		{
			discardCards = 0
			uvN = 0;
			drawPhase = 1;
			return;
		}
		uvN += 1;


		
	}
}

if(fight)
{
	pC = playField[1]
	cC = playField[0]
	if(pC.type == "scissor")
	{
		if(cC.type == "rock")
		{
			t = pC
			o = cC
			s = rock;
			audio_play_sound(loss,0,0)
			computerPoints += 1
		}
		else if(cC.type == "paper")
		{
						t = cC
			o = pC
			s = scissor;
			audio_play_sound(win,0,0)
			playerPoints += 1
		}
		else
		o = 0;
	}
	else if(pC.type == "rock")
	{
		if(cC.type == "paper")
					{
			t = pC
			o = cC
			s = paper;
			audio_play_sound(loss,0,0)
			computerPoints += 1
		}
		else if(cC.type == "scissor")
		{
						t = cC
			o = pC
			s = rock;
			audio_play_sound(win,0,0)
			playerPoints += 1
		}
		else
		o = 0;
	}
	else if(pC.type == "paper")
	{
		if(cC.type == "scissor")
					{
			t = pC
			o = cC
			s = scissor;
			audio_play_sound(loss,0,0)
			computerPoints += 1
		}
		else if(cC.type == "rock")
		{
			t = cC
			o = pC
			s = paper;
			audio_play_sound(win,0,0)
			playerPoints += 1
		}
		else
		o = 0;
	}
	fight = 0;
}

