/// @description Shark animations alarm

// Peek animation
if(global.currentPart == 1)
{
	if(timer > 0)
	{
		timer--;
		
		if(global.shark.x < peek_Xmax)
		{
			global.shark.x += 2;
		}
		
		if(global.shark.image_angle >= peek_angleMax)
		{
			global.shark.image_angle += peek_turnSpeed * sin(global.shark.y);	
		}
		
		alarm[0] = room_speed / 17;
	}
	else {
		alarm[0] = -1;	
	}
	
}
// Shark intro
if(global.currentPart == 2)
{
	if(timer > 0)
	{
		timer--;
		
		// Straighten sprite
		if(global.shark.image_angle != 0)
		{
			global.shark.image_angle -= peek_turnSpeed * sin(global.shark.y);	
		}
		
		// Move into the scene
		if(global.shark.x < room_width / 3)
		{
			global.shark.x += 7;	
		}
		
		alarm[0] = room_speed / 17;
	}
	else {
		alarm[0] = -1;
	}
}

// Move shark to the center of the screen
if(global.currentPart == 3)
{
	if(timer > 0)
	{
		timer--;
		
		// Move into the scene
		if(global.shark.x < room_width / 2)
		{
			global.shark.x += 4;	
		}
		
		alarm[0] = room_speed / 17;
	}
	else {
		alarm[0] = -1;
	}	
}

// Move shark to the right of the screen
if(global.currentPart == 4)
{
	if(timer > 0)
	{
		timer--;
		
		// Move shark right
		if(global.shark.x > 30)
		{
			global.shark.x += 2;	
		}
		
		alarm[0] = room_speed / 17;
	}
	else {
		alarm[0] = -1;
	}	
}

// Move shark to the left of the screen
if(global.currentPart == 5)
{		
	if(timer > 0)
	{
		timer--;
		
		// Move shark left
		if(global.shark.x > room_width / 3)
		{
			global.shark.x -= 4;	
		}
		
		
		
		alarm[0] = room_speed / 17;
	}
	else {
		alarm[0] = -1;
		
		with(global.shark)
		{
			image_xscale = 1;
			y -= 1;
		}
	}	
}
