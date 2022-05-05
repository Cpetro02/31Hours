/// @description Create global stuff

// Seed rng
randomise();


/*
===============================
*							  *
*		Player Resources	  *
*							  *
===============================
*/

// Resources values 
global.hp = 100;
global.food = 100; 
global.water = 100; 
global.wood = 0;
global.plastic = 0;
global.metal = 0;
global.spiderWebs = 0;
global.coconuts = 0;
global.fruit = 0;
// Resource use intervals
global.waterUseInterval = room_speed  * 3;	//	1 water every 3 seconds
global.foodUseInterval = room_speed * 7;	//	1 food every 7 seconds


// Set resource timers
alarm[0] = global.waterUseInterval;
alarm[1] = global.foodUseInterval;

// Create left side ocean item spawner
global.hasMetalSword = false;
