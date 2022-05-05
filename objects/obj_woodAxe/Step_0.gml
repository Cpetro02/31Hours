/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_character) {
	// Render at the same level as the player
	depth = -1;

	// Check if this object is in player's hand
	if(inPlayerHand)
	{
		persistent = true
		// Update x and y to stay with player
		x = obj_character.x + (image_xscale * 8);
		y = obj_character.y;
		global.itemInHand = obj_woodAxe;
		
	
		// Keep direction facing the same
		image_xscale = obj_character.image_xscale;
	}

	
}

if instance_exists(obj_woodAxe) {
	if (room == rm_book)
		obj_woodAxe.layer = layer_get_id("Instances2")
	else if (room == rm_Island)
		obj_woodAxe.layer = layer_get_id("Instances_Environment_Controllers")
	
}
