/// @description Add wood
global.wood += value;

/*
if (global.wood > 1) {
	image_speed = 0
	if sprite_exists(spr_numbers) {
		image_index = global.wood - 2;	
	}
	else if !sprite_exists(spr_numbers) {
		// change coordinates when we have coordinates array
		image_index = 0;
		draw_sprite(spr_numbers, image_index, 43, 700)
	}
	
	
}*/


instance_destroy(self);

