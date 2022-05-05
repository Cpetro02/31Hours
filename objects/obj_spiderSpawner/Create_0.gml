/// @description Insert description here
// You can write your code in this editor
function spawnSpider() {
    var chosenX = random_range(0, 1);
	var chosenY = random_range(0, 1);
	var xSpawn = 0;
	var ySpawn = 0;
	if chosenX > .5 {
		xSpawn = random_range(-100, -15)
	} else {
		xSpawn = random_range(room_width + 15, room_width + 100)
	}
	
	if chosenY > .5 {
		ySpawn = random_range(-100, -15)
	} else {
		ySpawn = random_range(room_height + 15, room_height + 100)
	}
	
	instance_create_layer(xSpawn, ySpawn, "Instances", obj_dungeonChaser)
}
alarm[0] = 60 * 10
