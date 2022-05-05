if position_meeting(mouse_x, mouse_y, obj_toddNameplate) {
	global.gender = "male"
	//object_set_sprite(obj_TEMP_character, spr_male_side_idle)
	room_goto(rm_introScene1)
}
