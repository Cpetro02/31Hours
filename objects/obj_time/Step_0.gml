/*
We only change the image alpha when we are in the island.
If we are in the spider dungeon then set the image_alpha = 0.

In the alarm function, the brightness is still being adjusted
accordingly and when we switch rooms is when the brightness is noticeable.

*/

//if we are in the island room, then update the image
if room == rm_Island {
	image_alpha = dayLighting
} else {
	//otherwise, set the image_alpha to 0.
	image_alpha = 0
}

if dayLighting >= .75 and not chaserSpawnerActive {
	chaserSpawnerActive = true
	instance_create_layer(x, y, "Instances_Environment_Controllers", obj_chaserSpawners)
}
