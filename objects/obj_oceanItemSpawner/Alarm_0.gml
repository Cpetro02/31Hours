/// @description Spawn item
// Commenting out since we no longer have an ocean - 4/20/2022

/*

// Check whether this is the right or left spawner
if(x == global.leftItemSpawner.x && y == global.leftItemSpawner.y)
{
	// Left Spawner	(in top left of the screen)
	
	// Check if item should spawn and move right or spawn and move down
	var dir = round(random_range(0,1));
	
	// Move item to the right
	if(dir == 0)
	{
		// Create object
		var obj_item = instance_create_layer(x,y,"Instances_Environment_Controllers",global.leftItemSpawner.obj_item);
		
		// Move item
		with(obj_item)
		{
			// Move to the edge of the screen 
			move_towards_point(room_width+sprite_width, y, moveSpeed);	
		}
	}
	else {
		// Move item down
		var obj_item = instance_create_layer(x,y,"Instances_Environment_Controllers",global.leftItemSpawner.obj_item);
		
		// Move item
		with(obj_item)
		{
			// Move to the edge of the screen 
			move_towards_point(x, room_height + sprite_height, moveSpeed);	
		}
	}
	
	// Update spawner item and reset alarm
	global.leftItemSpawner.obj_item = obj_controller.random_item();
	alarm[0] = spawnInterval;
}
else if(x == global.rightItemSpawner.x && y == global.rightItemSpawner.y)
{
	// Right Spawner (in bottom of the screen)
	
	// Check if item should spawn and move left or spawn and move up
	var dir = round(random_range(0,1));
	
	// Move item to the left
	if(dir == 0)
	{
		// Create object
		var obj_item = instance_create_layer(x,y,"Instances_Environment_Controllers",global.rightItemSpawner.obj_item);
		
		// Move item
		with(obj_item)
		{
			// Move to the edge of the screen 
			move_towards_point(0-sprite_width, y, moveSpeed);	
		}
	}
	else {
		// Move item up
		var obj_item = instance_create_layer(x,y,"Instances_Environment_Controllers",global.rightItemSpawner.obj_item);
		
		// Move item
		with(obj_item)
		{
			// Move to the edge of the screen 
			move_towards_point(x, 0-sprite_height, moveSpeed);	
		}
	}
	
	// Update spawner item and reset alarm
	global.rightItemSpawner.obj_item = obj_controller.random_item();
	alarm[0] = spawnInterval;
}
else {
	// Something has gone terribly wrong
	show_debug_message("\n\nERROR IN obj_oceanItemSpawner.alarm0: invalid spawn location\n\n");
}

*/
