/// @description Insert description here
// You can write your code in this editor
//setting up the state variables
playerDetected = false
goingHome = false
originalSpeed = chaseSpeed
playerReference = obj_character
standStill = false
isDamaged = false
originalXScale = image_xscale
originalYScale = image_yscale
shaderCounter = 0
//image_xscale = xScaleFlip;

// record the cannibal's spawn position
startX = x
startY = y
path_start(cannibalPath, pathSpeed, path_action_reverse, false)

// this function checks if the cannibal is
// within it's spawn area
function withinHomeBounds() {
	var x1 = startX - 100
	var y1 = startY - 100
	var x2 = startX + 100
	var y2 = startY + 100
	
	if point_in_rectangle(x, y, x1, y1, x2, y2) {
		return true
	}
	
	return false
}

//The next two functions are vision cones.
// The second function makes the vision cone bigger and is used
// to chase the player
// Code for generating a vision cone was taken from gamemaker documentation.
// Source: https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Movement_And_Collisions/Collisions/point_in_triangle.htm
function nearPlayer() {
    if instance_exists(playerReference)
        {
        var x1 = x + lengthdir_x(200, image_angle - 45);
        var y1 = y + lengthdir_y(200, image_angle - 45);
        var x2 = x + lengthdir_x(200, image_angle + 45);
        var y2 = y + lengthdir_y(200, image_angle + 45);
    if point_in_triangle(playerReference.x, playerReference.y, x, y, x1, y1, x2, y2)
        {
            return true
        }
	        return false
    }
}

function nearPlayerChasing() {
    if instance_exists(playerReference)
        {
        var x1 = x + lengthdir_x(300, image_angle - 45);
        var y1 = y + lengthdir_y(300, image_angle - 45);
        var x2 = x + lengthdir_x(300, image_angle + 45);
        var y2 = y + lengthdir_y(300, image_angle + 45);
    if point_in_triangle(playerReference.x ,playerReference.y, x, y, x1, y1, x2, y2)
        {
            return true
        }
	        return false
    }
}

function determineSprite() {
	if (image_angle >= 0 and image_angle <= 65) or (image_angle >= 295 and image_angle <= 360) {
		sprite_index = spr_cannibalRight
		image_yscale = 1
		image_xscale = 1
	} else {
		if image_angle >= 115 and image_angle <= 245 {
			sprite_index = spr_cannibalLeft
			image_yscale = -1
			image_xscale = -1
		} else {
			if image_angle >= 65 and image_angle <= 115 {
				sprite_index = spr_cannibalFront
				image_yscale = -1
			    image_xscale = -1
			} else {
				sprite_index = spr_cannibalFront
				image_yscale = 1
			    image_xscale = 1
			}
			
		}
	}
}
