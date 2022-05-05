/// @description Insert description here
// You can write your code in this editor
x = clamp(x,0,room_width-sprite_width);
y = clamp(y,0,room_height-sprite_height);

if instance_exists(playerReference) {
shaderCounter += 1
if shaderCounter > 1000 {
	shaderCounter = 0
}
if instance_exists(playerReference) {
	if point_distance(x, y, playerReference.x, playerReference.y) < 500 {
		playerDetected = true;
		image_speed = 1;
	}
}

if playerDetected and !performingAction {
	
	performingAction = true;
	// generate 3 random integers
	randomValue = irandom_range(1,3)
	// didn't use a switch case because I am monkey brain
	
	// case 1: move towards the player's location and shoot venom
	// whenever stopped.
	if randomValue == 1 {
		isMoving = true
		playerLocationX = playerReference.x
		playerLocationY = playerReference.y
		move_towards_point(playerLocationX, playerLocationY, movementSpeed)
		moveAnimation()
		// if this alarm goes off, stop moving the spider
		alarm[1] = room_speed * .5
		// or if they reach the player's location then stop moving the spider.
		if x == playerLocationX and y == playerLocationY {
			speed = 0
			isMoving = false
			instance_create_layer(x, y, "Instances_Environment_Controllers", obj_spiderVenom)
		}
	}
	
	// case 2: just shoot venom
	if randomValue == 2 {
	    instance_create_layer(x, y, "Instances_Environment_Controllers", obj_spiderVenom)
	}
	
	// move towards a random point and shoot venom when you are done
	if randomValue == 3 {
		isMoving = true
		randomX = random_range(5, room_width)
	    randomY = random_range(5, room_height)
		move_towards_point(randomX, randomY, movementSpeed)
		moveAnimation()
		alarm[1] = room_speed * .5
		if x == randomX and y == randomY {
			speed = 0
			isMoving = false
		}
	}

    // when this alarm goes off, make them perform this entire process again
	alarm[0] = room_speed * timeInterval
}

// if spider is not moving then turn them to their idle animation
if not isMoving {
	sprite_index = forwardFacingIdle;
	image_angle = point_direction(x, y, playerReference.x, playerReference.y)
}

if healthPoint <= 0 {
	global.spiderWebs += 1
	instance_destroy()
}

}
