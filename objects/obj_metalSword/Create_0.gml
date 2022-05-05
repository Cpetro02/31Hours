/// @description Insert description here
// You can write your code in this editor

// don't be mad can, i promise it still works :peepoCry:



//alarm[0] = room_speed * .5

function drawSword() {
	if obj_character.facingDirection == "left" {
		image_angle = 180
	}

	if obj_character.facingDirection == "up" {
		image_angle = 90
	}

	if obj_character.facingDirection == "down" {
		image_angle = 270
	}

	if obj_character.facingDirection == "right" {
		image_angle = 0
	}
}

inPlayerHand = false;

// Render at the same level as the player
depth = 1;