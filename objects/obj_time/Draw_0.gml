/// @description Insert description here

if(global.hp > 0)
{
	draw_self()
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text_transformed(950, 1048, string(timer), 2.5, 2.5, 0);
	draw_text_transformed(1200, 1048, string(dayLighting), 2.5, 2.5, 0);
}
