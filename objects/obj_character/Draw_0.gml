/// @description Insert description here
// You can write your code in this editor

//Use 3 different shaders. If the player has low food or water:
if global.water < 25 or global.food < 25 {
	// prioritize water and make them have the low water shader
	if global.water < 25 {
		shader_set(sh_lowWater)
	// otherwise make them have the low food shader
	} else {
		shader_set(sh_lowFood)
	}
// otherwise just have them back to normal
} else {
	shader_set(sh_normal);
}

draw_self();
shader_reset();
