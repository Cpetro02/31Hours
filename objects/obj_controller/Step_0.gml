/// @description

// Clamp values
global.food = clamp(global.food, 0, 100);
global.water = clamp(global.water, 0, 100);
global.hp = clamp(global.hp, 0, 100);

// Check water and food
if(global.water <= 0)
{
	global.hp -= (3/room_speed); // 3dps	
}

if(global.food <= 0)
{
	global.hp -= (1/room_speed); // 1dps	
}

// Check if player has health
if(global.hp <= 0 && !obj_character.dead)
{
	// Set player to be dead and update sprite
	with(obj_character)
	{
		dead = true;
		sprite_index = spr_male_idle_down;
		image_angle = 90;
	}
	
	// Spawn the dancing death fish
	for(var i = 0; i < random_range(1,10); i++)
	{
		var xSpawn = random_range(obj_character.x-150, obj_character.x + 150);
		var ySpawn = random_range(obj_character.y-150, obj_character.y + 150);
		var fishObj = instance_create_layer(xSpawn, ySpawn, "Instances_Environment_Controllers", obj_fish);
	}
	
	global.hp = -1;
	
	// Create death screen
	var deathScreen = instance_create_layer(obj_character.x, obj_character.y, "Instances_Environment_Controllers", obj_deathScreen);
}



// Check for cheat code entry
checkForCheatCode();

if obj_time.timer <= 0 {
	global.win = true
}
