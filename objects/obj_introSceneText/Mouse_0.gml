/// @description Insert description here
// You can write your code in this editor
if position_meeting(mouse_x, mouse_y, obj_introSceneText) {
	room_goto(rm_Island)
	timeline_running = false;
	instance_destroy()
}
