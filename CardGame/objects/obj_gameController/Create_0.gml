playerHand = []
playerX = 1525
playerY = 1625

computerHand = []
computerX = 1525
computerY = 1100
drawPhase = 0;


discardPile = []
discardX = 2150
discardY = 1425
playCards = 0;

drawPile = []
drawX = 1150
drawY = 1425

shuffleDraw = 0;
shufflePhase= 1;

playField = []
cardPlayedID = 0;
computerPlayedID = 0;

discardCards = 0;

fight = 0;
playerPoints = 0;
computerPoints = 0;

sleep = 0;

uvTimer = 0;
uvN = 0;

global.controllerID = id;

nR = 6;
nP = 6; 
nS = 6;

for(i = 0; i < 18; i++)
{
c = instance_create_depth(discardX,drawY,-1000,obj_card)
c.sprite_index = cardBackLaidDown;
array_push(discardPile,c);
if(i<6)
{
	c.type = "rock"
	c.spriteFace = rockCard
c.laidDownSprite = rockCardLaidBack;
c.flipToLDSprite = flipToRockLaidback
c.flipFromLDSprite = flipFromRockLaidback
c.fliptoSprite = flipToRock;
c.flipFromSprite = cardRockflip;
}

else if(i<12)
{
	c.type = "paper"
		c.spriteFace = paperCard
c.laidDownSprite = paperCardLaidDown;
c.flipToLDSprite = flipToPaperLaidback
c.flipFromLDSprite = flipFromPaperLaidback
c.fliptoSprite = flipToPaper;
c.flipFromSprite = cardPaperflip;
}
else
{
	c.type = "scissor"
			c.spriteFace = scissorCard
c.laidDownSprite = scissorCardLaidDown;
c.flipToLDSprite = flipToScissorLaidback
c.flipFromLDSprite = flipFromScissorLaidback
c.fliptoSprite = flipToScissor;
c.flipFromSprite = cardScissorflip;
}

}

o = 0;
t = 0;
s = 0;

draw_set_font(font)