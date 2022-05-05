/// @description Insert description here
// You can write your code in this editor
if not receivedDamage and global.itemInHand == obj_metalSword {
	receivedDamage = true
    healthPoint -= 1 
	alarm[2] = room_speed * 2
}
