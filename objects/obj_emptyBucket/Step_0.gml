/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_character) {
	depth = -1;

	// Check if this object is in player's hand
	if(inPlayerHand)
	{
		persistent = true
		// Update x and y to stay with player
		x = obj_character.x;
		y = obj_character.y;
	
		// Keep direction facing the same
		image_xscale = obj_character.image_xscale;
	}

	
}


if (room == rm_book)
	obj_emptyBucket.layer = layer_get_id("Instances2")
else if (room == rm_Island)
	obj_emptyBucket.layer = layer_get_id("Instances_Environment_Controllers")
