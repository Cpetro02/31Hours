/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Timeline position: " + string(timeline_position));

// Listen for keyboard press to exit game
if(listenForInput)
{
	if(keyboard_check_pressed(ord("R")))
	{
		game_restart();	
	}
	else if(keyboard_check_pressed(ord("Q")) || keyboard_check_pressed(vk_escape))
	{
		game_end();	
	} 
}
