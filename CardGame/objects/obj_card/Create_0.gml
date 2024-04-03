go = 0;
targetX = 0;
targetY = 0;
homeX = 0;
homeY = 0;
state_grabbed = 0;
s = .2
state_active = 0;
state_hover = 0;
state_played = 0;

n = 0;

uvTimer = 0;
depth = -3000 + y

type= "none";


function goTo(tX,tY)
{
	audio_play_sound(toss,0,0)
	targetX = tX
	targetY = tY
	go = 1;
}

spriteFace = rockCard
laidDownSprite = rockCardLaidBack;
flipToLDSprite = flipFromRockLaidback
flipFromLDSprite = flipFromRockLaidback
fliptoSprite = flipToRock;
flipFromSprite = cardRockflip;

loadedFlip = 0;


draw_set_font(font);