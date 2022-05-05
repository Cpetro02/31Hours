/// @description Insert description here
// Set color and alignment
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Set text alpha and draw to the screen
draw_set_alpha(alpha);
draw_text_transformed(xPos, yPos, text, xScale, yScale, 0);

