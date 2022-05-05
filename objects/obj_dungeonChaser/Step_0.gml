if cantMove or isDamaged {
	speed = 0
	if not moveTimer {
		moveTimer = true
	    alarm[0] = 60 * 2 
	}
} else {
	image_angle = point_direction(x, y, obj_character.x, obj_character.y)
    //determineSprite()
    move_towards_point(obj_character.x, obj_character.y, moveSpeed)
}

if healthPoint <= 0 {
	global.spiderWebs += 1
	instance_destroy()
}

if place_meeting(x, y, obj_character) and not hasDamagedPlayer{
	hasDamagedPlayer = true
	alarm[1] = 60 * 2
	global.hp -= 5
}

if place_meeting(x , y, obj_metalSword) and global.itemInHand == obj_metalSword {
	if not isDamaged {
		isDamaged = true
		healthPoint -= 1
	}
	alarm[2] = 60 * 2
}

if place_meeting(x , y, obj_woodSword) and global.itemInHand == obj_woodSword {
	if not isDamaged {
		isDamaged = true
		healthPoint -= .5
	}
	alarm[2] = 60 * 2
}
