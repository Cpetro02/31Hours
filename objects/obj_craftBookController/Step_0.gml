p = obj_character;

if (global.fishingRod == true) {
	instance_create_layer(p.x, p.y - 50, "Instances_Environment_Controllers", obj_fishingRod);
	global.fishingRod = false;	
}

if (global.emptyBucket == true) {
	instance_create_layer(p.x, p.y - 50, "Instances_Environment_Controllers", obj_emptyBucket);
	global.emptyBucket = false;
}

if (global.woodenAxe == true) {
	instance_create_layer(p.x, p.y - 50, "Instances_Environment_Controllers", obj_woodAxe);	
	global.woodenAxe = false;
}

if (global.woodenSword == true) {
	instance_create_layer(p.x, p.y - 50, "Instances_Environment_Controllers", obj_woodSword);
	global.woodenSword = false;
}

if (global.metalAxe == true) {
	instance_create_layer(p.x, p.y - 50, "Instances_Environment_Controllers", obj_metalAxe);	
	global.metalAxe = false;
}

if (global.metalSword == true) {
	instance_create_layer(p.x, p.y - 50, "Instances_Environment_Controllers", obj_metalSword);
	global.metalSword = false;
}

if (global.waterPurifier == true) {
	if (instance_exists(obj_emptyBucket)) 
		instance_destroy(obj_emptyBucket)
	global.canDrinkWater = true;
	global.waterPurifier = false;
}
