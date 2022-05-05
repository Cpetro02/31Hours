moveSpeed = 2 * random_range(1, 3)cantMove = false
moveTimer = false
hasDamagedPlayer = false
isDamaged = false
shaderCounter = 0
depth = -99
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
