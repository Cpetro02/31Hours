/// @description Setup end cutscene

// Create text object
global.text = instance_create_layer(0,0,"instances",obj_text);
global.text.xPos = room_width / 3;
global.text.yPos = room_height / 3;


global.sharkStartX = -60;
global.sharkStartY = room_height - 50;

global.shark = instance_create_layer(global.sharkStartX, global.sharkStartY, "instances", obj_leftShark);
global.shark.visible = false;

// Current part of the scene
global.currentPart = 1;



// Peek in left shark's head
peek_Xmax = global.sharkStartX + 75;
peek_angleMax = -30;
peek_turnSpeed = 3;
timer = room_speed*3;
listenForInput = false;


// Shark peek animation
function sharkPeek()
{
	// Start alarm for peek animation
	alarm[0] = room_speed/17;
	
	// Wait for animation to be done
	while not alarm[0] == -1 {
		;	
	}
}


// Shark intro animation
function sharkIntro()
{
	// Increment part and set shark animation alarm
	global.currentPart++;
	timer = room_speed;
	alarm[0] = room_speed/17;
}

// Play end cutscene
function play()
{	
	timeline_index = tl_sharkAnim;
	timeline_speed = 1/room_speed;
	timeline_running = true;
}


// Draw end game text
global.text.xScale = 0.0;
global.text.yScale = 0.0;
global.text.alpha = 0.0;
global.text.text = "Game over.";
timer = room_speed*1.5;
alarm[1] = room_speed / 17;


//play();


