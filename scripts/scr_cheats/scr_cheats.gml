// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Check if a cheat code is input
function checkForCheatCode()
{
	// Die instantly (tested; does not work in real life)
	if(keyboard_check(vk_control) && keyboard_check_pressed(ord("D")))
	{
		global.hp = 0;	
	}
	
	// Test command
	if(keyboard_check(vk_control) && keyboard_check_pressed(ord("T")))
	{
		
	}
	
	if(keyboard_check_pressed(ord("P")))
	{
		global.win = true;	
	}
	
	// Spawn items
	if(keyboard_check_pressed(ord("M")))
	{
		instance_activate_object(inst_574F08CD);
		instance_activate_object(inst_5E2E39AD);
		instance_activate_object(inst_64988702);
		instance_activate_object(inst_5DA19BD0);
		instance_activate_object(inst_1C983FA0);
		instance_activate_object(inst_4BAF68CD);
		
		global.canDrinkWater = true;
		
	}
	
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("H"))) {
		global.hp = 100;
		global.water = 100;
		global.food = 100;
	}
	
	if (keyboard_check(vk_control) && keyboard_check_pressed(ord("Q"))) {
		global.metal = 100;
		global.wood = 100;
		global.spiderWebs = 100;
		global.coconuts = 100;
		global.fruit = 100;
		//global.
	}
}