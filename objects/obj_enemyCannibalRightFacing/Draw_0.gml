/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_alpha(.4)
draw_set_color(c_red)
if playerDetected {
	var x1 = x + lengthdir_x(300, image_angle - 45);
    var y1 = y + lengthdir_y(300, image_angle - 45);
    var x2 = x + lengthdir_x(300, image_angle + 45);
    var y2 = y + lengthdir_y(300, image_angle + 45);
    draw_triangle(x,y,x1, y1, x2, y2, 0);
	

} else {
    var x1 = x + lengthdir_x(200, image_angle - 45);
    var y1 = y + lengthdir_y(200, image_angle - 45);
    var x2 = x + lengthdir_x(200, image_angle + 45);
    var y2 = y + lengthdir_y(200, image_angle + 45);
    draw_triangle(x,y,x1, y1, x2, y2, 0);
	
}

draw_set_alpha(1)

/// @description Insert description here
// You can write your code in this editors
if isDamaged {
	shader_set(sh_unitDamaged);
	var timeElapsed = shader_get_uniform(sh_unitDamaged, "gameTime");
    shader_set_uniform_f(timeElapsed, shaderCounter);
} else {
	shader_set(sh_normal);
}

draw_self();
shader_reset();
