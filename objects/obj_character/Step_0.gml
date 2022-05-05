/// @description Insert description here
// You can write your code in this editor
if room != rm_book {
	//	Check for keyboard input from the player
	function checkKeyboardInput()
	{
		// Move up
		    if(keyboard_check(ord("W")))
		    {
			    facingDirection = "up"
				
				// Ensure player won't collide with block object
				if(!place_meeting(x, y-ySpeed, obj_block))
				{
					y -= ySpeed;	
				}
			    
		
			    // Use extra food and water while moving
			    global.water -= floor(global.waterUseInterval / (room_speed*global.waterUseInterval));
				global.food -= floor(global.foodUseInterval / (room_speed*global.foodUseInterval*3));
		
			// Sprite changes
				if g == "female"
					sprite_index = spr_female_walk_up;
				else if g == "male"
					sprite_index = spr_male_walk_up;
		
				// Clear fishing flag
				fishing = false;
			}
	
			// Move left
			if(keyboard_check(ord("A")))
			{
				facingDirection = "left"
				
				
				// Ensure player won't collide with block object
				if(!place_meeting(x-xSpeed, y, obj_block))
				{
					x -= xSpeed;	
				}
			    
		
				// Use extra food and water while moving
				global.water -= floor(global.waterUseInterval / (room_speed*global.waterUseInterval));
				global.food -= floor(global.foodUseInterval / (room_speed*global.foodUseInterval*3));
		
				// Sprite changes
				image_xscale = -1;
				if g == "female"
					sprite_index = spr_female_walk_side;
				else if g == "male"
					sprite_index = spr_male_walk_side;
		
				// Clear fishing flag
				fishing = false;
			}
	
			// Move right
			if(keyboard_check(ord("D")))
			{
				facingDirection = "right"
				
				// Ensure player won't collide with block object
				if(!place_meeting(x+xSpeed, y, obj_block))
				{
					x += xSpeed;	
				}
		
				// Use extra food and water while moving
				global.water -= floor(global.waterUseInterval / (room_speed*global.waterUseInterval));
				global.food -= floor(global.foodUseInterval / (room_speed*global.foodUseInterval*3));
		
				// Sprite changes
				image_xscale = 1;
				if g == "female"
					sprite_index = spr_female_walk_side;
				else if g == "male"
					sprite_index = spr_male_walk_side;
		
				// Clear fishing flag
				fishing = false;
			}
	
			// Move down
			if(keyboard_check(ord("S")))
			{
				facingDirection = "down"
				
				// Ensure player won't collide with block object
				if(!place_meeting(x, y+ySpeed, obj_block))
				{
					y += ySpeed;	
				}
					
		
				// Use extra food and water while moving
				global.water -= floor(global.waterUseInterval / (room_speed*global.waterUseInterval));
				global.food -= floor(global.foodUseInterval / (room_speed*global.foodUseInterval*3));
		
				// Sprite changes
				if g == "female"
				sprite_index = spr_female_walk_down;
				else if g == "male"
					sprite_index = spr_male_walk_down;
		
				// Clear fishing flag
				fishing = false;
			}
	
			// Check if player is holding item and wants to drop it
			if(keyboard_check_pressed(ord("Q")) && holdingItem)
			{
				// Clear flag
				holdingItem = false;

				// Clear fishing flag
				fishing = false;

				// Update item in hand to no longer follow player
				with(global.itemInHand)
				{
			 		inPlayerHand = false;
				}
		
				// Clear item in hand
				global.itemInHand = -1;
			}
		
	
	}


	// Check for mouse input
	function checkMouseInput()
	{
		// Check for left mouse button press
		if(mouse_check_button_pressed(mb_left))
		{
			// Check if player is trying to fish
			if(position_meeting(mouse_x, mouse_y, obj_tempWater))
			{
				// Get the water source being clicked
				var water = instance_nearest(mouse_x, mouse_y, obj_tempWater);
	
				// Check if player has a fishing rod and is within range
				if(global.itemInHand.object_index == obj_fishingRod && distance_to_object(water) <= global.itemInHand.range)
				{
					fishing = true;	
				}
			}
		}
	}

	//	Check for all input from the player
	function checkForInput()
	{
		checkKeyboardInput();
		checkMouseInput();
	
		//making player stay in screen
		x = clamp(x,0,room_width-sprite_width);
	    y = clamp(y,0,room_height-sprite_height);
	
	}


	if(!dead)
	{
		// Functions to call every step
		checkForInput();

		// Check if player is fishing
		if(fishing)
		{	
			fish();
		}
	
		// Check if player is in the ocean
		/*
		if(instance_place(x,y,obj_oceanBlock))
		{
			// Set flag
			inOcean = true;
		}
		*/
	}


	if place_meeting(x, y, obj_Bush) {
		insideBush = true
		insideBushCounter += 1
	} else {
		insideBush = false
		insideBushCounter = 0
		insideBushThreeSeconds = false
	}

	if insideBushCounter > room_speed * 2 {
		insideBushThreeSeconds = true
	} else {
		insideBushThreeSeconds = false
	}

}