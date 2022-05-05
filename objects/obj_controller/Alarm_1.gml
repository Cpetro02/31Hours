/// @description Food use timer

global.food -= 1;

if(global.food <= 0)
{
	// Start damaging player every (3?) seconds until they find food	
	global.hp--;
	alarm[1] = room_speed * 3;
}
else {
	// Reset timer
	alarm[1] = global.foodUseInterval;
}

