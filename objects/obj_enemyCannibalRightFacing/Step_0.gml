/// @description Insert description here

// if the cannibal is not going hone
if not goingHome {
	// if player hasn't been detected:
    if not playerDetected {
		// if the cannibal is at the end of its path then
		// flip it.
		
		// if the cannibal is at the beginning of its path then
		// reset it to its original image
		
        if path_position == 1 {
	        image_angle = flippedAngle;
        }

        if path_position == 0 {
			image_angle = startingAngle;
        }
		determineSprite()
	// if player has been detected:
    } else {
		determineSprite()
		// make them point to the player
		image_angle = point_direction(x, y, playerReference.x, playerReference.y)
	    path_end()
		// if the player is inside a bush and outside the vision cone then
		// set up variables in a way to make cannibal go home
	    if not nearPlayerChasing() and playerReference.insideBushThreeSeconds {
			 goingHome = true
			 playerDetected = false
		     move_towards_point(startX, startY, chaseSpeed / 2)	 
			 image_angle = point_direction(x, y, startX, startY)
	     }
		 // otherwise, keep chasing.
	     else {
		     if place_meeting(x, y, playerReference) or (place_meeting(x, y, obj_metalSword) and global.itemInHand == obj_metalSword) {
					 speed = 0
					 standStill = true
					 isDamaged = true
					 alarm[1] = room_speed * 2
				 }
				 
				 if not standStill {
					 move_towards_point(playerReference.x, playerReference.y, chaseSpeed/4)
				 }
	     }
    }

    // if instance exists and has not been detected
    if instance_exists(playerReference) and not playerDetected
    {
		// is the player near? 
        if nearPlayer() {
			// if so then alert cannibal
			playerDetected = true;
		}
    }
	
// if cannibal is going home:
} else {
	
	// check if they are already in their home bounds
	if withinHomeBounds() {
		image_xscale = originalXScale
		image_yscale = originalYScale
		// reset them back to normal on their path
		path_start(cannibalPath, pathSpeed, path_action_reverse, false)
		image_angle = startingAngle
		goingHome = false
	} else {
		// if player is near cannibal as they are walking then commence
		// chasing again
		determineSprite()
		if nearPlayer() {
		    goingHome = false;
		    playerDetected = true; 
		}
	}
}

if obj_time.dayLighting >= .75 {
	instance_destroy()
}

shaderCounter += 1

if shaderCounter > 100 {
	shaderCounter = 0
}
