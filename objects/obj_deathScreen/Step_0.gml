/// @description Insert description here

image_alpha += 0.0035;


currWidth = camera_get_view_width(view_camera[2]);
currHeight = camera_get_view_height(view_camera[2]);

// Center camera at player
xshift = camera_get_view_x(view_camera[2]) - currWidth * 0.5;
yshift = camera_get_view_y(view_camera[2]) - currHeight * 0.5;
camera_set_view_pos(view_camera[2], currWidth - xshift, currHeight - yshift);

zoom_rate = -0.005;

// Find new width and height for the camera by interpolating current vals and target zoom
nextWidth = lerp(currWidth, zoom * startWidth, zoom_rate);
nextHeight = lerp(currHeight, zoom * startHeight, zoom_rate);

// Clamp next width and height 
nextWidth = clamp(nextWidth, 0, room_width/2);
nextHeight = clamp(nextHeight, 0, room_height/2);

// Compute x and y shift to keep the camera centered
xshift = camera_get_view_x(view_camera[2]) - (nextWidth - currWidth) * 0.5;
yshift = camera_get_view_y(view_camera[2]) - (nextHeight - currHeight) * 0.5;

// Apply zoom to camera view
camera_set_view_size(view_camera[2], nextWidth, nextHeight);

// Once image alpha is at 1, go to end room
if(image_alpha >= 1)
{	
	instance_destroy(all);
	room_goto(rm_end);	
}
