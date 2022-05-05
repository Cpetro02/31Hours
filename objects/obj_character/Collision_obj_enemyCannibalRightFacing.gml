/// @description Insert description here
// You can write your code in this editor
if not isDamagedCannibal {
	global.hp -= 25
	isDamagedCannibal = true
	alarm[0] = room_speed * 3
	//start the damage indicator
}
