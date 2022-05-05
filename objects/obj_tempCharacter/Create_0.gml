g = global.gender;
facingDirection = "down"
swordState = false
if g == "female"
	sprite_index = spr_female_idle_down
else if g == "male"
	sprite_index = spr_male_idle_down

/// @description Insert description here
// You can write your code in this editor
xSpeed = 5;
ySpeed = 5;

holdingItem = false;
fishing = false;
dead = false;
global.itemInHand = -1;

depth = 1; 

insideBush = true;
insideBushThreeSeconds = false;
insideBushCounter = 0;
isDamagedCannibal = false;


