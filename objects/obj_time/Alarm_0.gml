/// @description Decrement timer

timer--;

// Reset alarm
if(timer > 0)
{
	alarm[0] = room_speed;	
	
	
	// Make the room brighter
	if(timer < ((60*minutes)/3))
	{
		//Don't update image alpha just yet.
		//Instead just store what the lighting should be for now.
		dayLighting -= 1.05 / timer;
	}
	else if (timer > ((60*minutes)/2))
	{
		// Make the room darker
		if dayLighting >= .75
		    dayLighting = .75
		else
		    dayLighting += 1.25 / timer;	
	}
}