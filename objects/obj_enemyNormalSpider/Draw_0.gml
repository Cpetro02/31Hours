/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editors
if receivedDamage {
	shader_set(sh_unitDamaged);
	var timeElapsed = shader_get_uniform(sh_unitDamaged, "gameTime");
    shader_set_uniform_f(timeElapsed, shaderCounter);
} else {
	shader_set(sh_normal);
}

draw_self();
shader_reset();
