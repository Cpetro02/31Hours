/// @description Insert description here
// You can write your code in this editor
playerDetected = false;
performingAction = false;
isMoving = false;
playerReference = obj_character;
original_angle = image_angle;
receivedDamage = false;
shaderCounter = 0;
function moveAnimation() {
	
	image_angle = original_angle;
    if (playerReference.x < x) {
		sprite_index = leftFacing;
	}
	if (playerReference.x > x) {
		sprite_index = rightFacing;
    }
}
