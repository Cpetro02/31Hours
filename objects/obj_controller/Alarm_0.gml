/// @description Water use timer

global.water -= 1;

if(global.water <= 0)
{
	// Start damaging player every second until they get water	
	global.hp -= 1;
	alarm[0] = room_speed;
}
else {
	// Reset timer
	alarm[0] = global.waterUseInterval;
}
