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
		x = obj_character.x;
		y = obj_character.y;
	
		// Keep direction facing the same
		image_xscale = obj_character.image_xscale;
	}

	// Check if player is fishing
	if(obj_character.fishing)
	{
		// Set sprite to 'Cast' fishing rod
		image_angle = 45;
	}
	else {
		// Set sprite to normal fishing rod
		image_angle = 0;	
	}
}