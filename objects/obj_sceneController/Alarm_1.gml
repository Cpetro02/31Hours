/// @description Fade in end-game message

timer--;

if(timer > 0) {
	with(global.text)
	{
		if(xScale < 5 && yScale < 5)
		{
			xScale += 0.1;
			yScale += 0.1;
		}
		if(alpha < 1)
		{
			alpha += 0.1;	
		}
	}
	alarm[1] = room_speed / 17;
}
else {
	listenForInput = true;
	alarm[1] = -1;	
}
