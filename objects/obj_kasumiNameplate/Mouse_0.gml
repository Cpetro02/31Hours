if position_meeting(mouse_x, mouse_y, obj_kasumiNameplate) {
	global.gender = "female"
	//object_set_sprite(obj_TEMP_character, spr_female_side_idle)
	room_goto(rm_introScene1)
}
