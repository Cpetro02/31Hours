/// @description Draw stuff!

if(global.hp > 0)
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	heartRed = make_colour_rgb(213,37,37);
	foodOrange = make_colour_rgb(215,143,90);
	waterBlue = make_colour_rgb(96,181,255);

	draw_sprite_ext(spr_hudBars, 0, 10, 10, 1.5, 1.5, 0, c_white, 1)
	draw_sprite_ext(spr_resourceBars, 0, 1250, 5, 1.5, 1.5, 0, c_white, 1)

	if instance_exists(obj_time) {
		draw_set_color(heartRed);
		draw_text_transformed(80, 20, string(obj_time.timer), 2, 2, 0); 
	}
	draw_set_font(fnt_bitbybit);
	draw_set_color(heartRed);
	draw_text_transformed(62, 80, string(global.hp), 1.5, 1.5, 0);

	draw_set_color(foodOrange);
	draw_text_transformed(62, 123, string(global.food), 1.5, 1.5, 0);

	draw_set_color(waterBlue);
	draw_text_transformed(62, 164, string(global.water), 1.5, 1.5, 0);





	if room == rm_Island
		draw_set_color(c_black);
	else if room == rm_book or room = temporary_room
		draw_set_color(c_white)
	else
		draw_set_color(c_black);
	


if room == rm_Island
	draw_set_color(c_white);
else if room == rm_book or room = temporary_room
	draw_set_color(c_white)
else
	draw_set_color(c_black);

draw_text_transformed(1257, 18, string(global.wood), 1.5, 1.5, 0);
draw_text_transformed(1257, 60, string(global.metal), 1.5, 1.5, 0);
draw_text_transformed(1257, 102, string(global.fruit), 1.5, 1.5, 0);
draw_text_transformed(1257, 144, string(global.spiderWebs), 1.5, 1.5, 0);
draw_text_transformed(1257, 186, string(global.coconuts), 1.5, 1.5, 0);

if (global.canDrinkWater) {
	draw_sprite_ext(spr_waterPurifier, -1, 2, 725, 2, 2, image_angle, image_blend, 1);
	draw_set_color(c_teal);
	draw_text_transformed(28, 734, "WATER PURIFIER EQUIPPED", 0.7, 0.7, 0);
}
}

// If player dies

if (global.hp <= 0) {
	
	set_viewport(2);
}

if (global.win == true) {
	draw_set_color(c_lime)
	instance_create_depth(room_width/2, room_height/2,-10,obj_win)
}
