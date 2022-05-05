// Script assets have changed for v2.3.0 see

// Fishing mechanic
function fish() {
	
	// Step into player object
	with(obj_character)
	{
		// Redundant fishing check
		if(fishing)
		{
			// Get the water source nearest to the player
			var waterSource = instance_nearest(x, y, obj_tempWater);
		
			var waterWidth = sprite_get_width(waterSource.sprite_index) * waterSource.image_xscale;
			var waterHeight = sprite_get_height(waterSource.sprite_index) * waterSource.image_yscale;
		
			// Check if player catches a fish (0.25% chance, NOTE: this is called once per frame if fishing)
			if(random_range(0.0,1.0) < (0.25/room_speed))
			{
				// Create fish object and move it towards player (to 'eat')
				var fishObj = instance_create_layer(waterSource.x-10, waterSource.y, "Instances_Environment_Controllers", obj_fish);
				
				// Check if player has room to eat
				if(global.food <= (100 - fishObj.value))
				{
					show_debug_message("\nFish caught!");
					with(fishObj)
					{	
						// Move towards player
						move_towards_point(obj_character.x, obj_character.y, 4);
					}
				}
				else {
					// Destroy fish
					instance_destroy(fishObj);
				}
			}
		}
	}

}