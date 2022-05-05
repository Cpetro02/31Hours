/// @description Insert description here

// Set image to transparent and depth to 0
image_alpha = 0.0;
depth = 0;


// TODO: set all other objects to depth 1 or greater


/**
Create a camera instance for the death view.
The camera will spawn on the player with a view size of
240x120 (this will be modified later), 0 degrees turn angle,
following player, with a 32x32 border
**/
deathCam = camera_create_view(obj_character.x, obj_character.y, 240, 120,
									0, obj_character, -1, -1, 32, 32);

// Set death view (viewport 2) to use global.deathCam
// From this point forward, to modify the camera, use view_camera[idx]...
view_set_camera(2, deathCam);

// Initialize camera zoom variables
zoom = 0.25;
startWidth = camera_get_view_width(view_camera[2]);
startHeight = camera_get_view_height(view_camera[2]);


// Set every object in this layer but this one to be at a lower depth
var instances = layer_get_all_elements(layer);

// Iterate through instances
for(var i = 0; i < array_length(instances); i++)
{
	if(layer_get_element_type(instances[i]) != obj_deathScreen)
	{
		with(instances[i])
		{
			depth += 1;	
			persistent = false;
		}
	}
}

// Move all tiles to a lower depth
layer_depth("bush_tiles", 1);
layer_depth("tiles_1", 1);

