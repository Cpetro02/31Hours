/// @description 'Use/Interact' Key

// Check if within range of water 
if(distance_to_object(obj_tempWater) < 5 && global.water+5 <= 100 && global.canDrinkWater == true)
{
	// Add to player's water
	global.water += 5;
	
	// Get the instance of water object that's closest so we only edit that one
	var waterSource = instance_nearest(x,y,obj_tempWater);
	
	// Update water object
	with(waterSource)
	{
		image_xscale -= 5 / amount;
		image_yscale -= 5 / amount;
		amount -= 5;		//	Subtract water taken
	}
}


// Check if within range of item
if (!holdingItem) {
	if(distance_to_object(obj_fishingRod) < 2) {
		global.itemInHand = instance_nearest(x,y,obj_fishingRod);
	}
	else if (distance_to_object(obj_emptyBucket) < 10) {
		global.itemInHand = instance_nearest(x,y,obj_emptyBucket);
	}
	else if (distance_to_object(obj_metalSword) < 2) {
		global.itemInHand = instance_nearest(x,y,obj_metalSword);
	}
	else if (distance_to_object(obj_woodSword) < 2) {
		global.itemInHand = instance_nearest(x,y,obj_woodSword);
	}
	else if (distance_to_object(obj_metalAxe) < 2) {
		global.itemInHand = instance_nearest(x,y,obj_metalAxe);
	}
	else if (distance_to_object(obj_woodAxe) < 2) {
		global.itemInHand = instance_nearest(x,y,obj_woodAxe);
	}
		
	// Modify the item
	with(global.itemInHand)
	{
		// Set image x&y scales to obj character's so it faces in the same direction
		image_xscale = obj_character.image_xscale;
		image_yscale = obj_character.image_yscale;
		
		// Set item to be behind player sprite
		depth = obj_character.depth + 1;
		
		// Set inPlayerHand so fishing rod will follow player
		inPlayerHand = true;
	}
	
	//only say they are holding an item if they actually have
	// an item in hand.
	
	/*
	There was a bug where if they pressed F it counted as having an item in hand.
	So they had to press Q to in order to pick stuff up again.
	*/
	if (global.itemInHand)
	    holdingItem = true
}
	
	

