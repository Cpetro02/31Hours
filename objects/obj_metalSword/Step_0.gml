/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_character) {
	// Render at the same level as the player
	depth = -1;

	// Check if this object is in player's hand
	if(inPlayerHand)
	{
		persistent = true
		image_xscale = -1
		// Update x and y to stay with player
		x = obj_character.x
		y = obj_character.y
		global.itemInHand = obj_metalSword;
		
	
		// Keep direction facing the same
		drawSword()
	} else {
		persistent = false
	}

	
}

if instance_exists(obj_metalSword) {
	if (room == rm_book)
		obj_metalSword.layer = layer_get_id("Instances2")
	else if (room == rm_Island)
		obj_metalSword.layer = layer_get_id("Instances_Environment_Controllers")
	
}
