// Determine if use has sufficient resources to craft item

// ***** PAGE 1 *****

if (global.page == 1) {
	
	// deactivate previous arrow
	instance_deactivate_object(obj_prev);
	instance_activate_object(obj_next);
	
	// top left: fishing rod
	if (global.wood >= 3 and global.spiderWebs >= 1 and global.food >= 1) {
		instance_activate_object(inst_46AD3AB2);
		instance_deactivate_object(inst_2E7F1E03);
	}
	else if (global.wood < 3 or global.spiderWebs < 1 or global.food < 1) {
		instance_activate_object(inst_2E7F1E03);
		instance_deactivate_object(inst_46AD3AB2);
	}
	
	// bottom left: bucket	
	if (global.wood >= 4) {
		instance_activate_object(inst_4AF6AB3D);
		instance_deactivate_object(inst_7229059F);
	}
	else if (global.wood < 4) {
		instance_activate_object(inst_7229059F);
		instance_deactivate_object(inst_4AF6AB3D);
	}
	
	// top right: wooden axe
	if (global.wood >= 5) {
		instance_activate_object(inst_7448FDB6);
		instance_deactivate_object(inst_3E7FC2F2);
	}
	else if (global.wood < 5) {
		instance_activate_object(inst_3E7FC2F2);
		instance_deactivate_object(inst_7448FDB6);
	}
			
	// bottom right: wooden sword
	if (global.wood >= 6) {
		instance_activate_object(inst_545CDF79);
		instance_deactivate_object(inst_74C53F6E);
	}
	else if (global.wood < 6) {
		instance_activate_object(inst_74C53F6E);
		instance_deactivate_object(inst_545CDF79);
	}
		
}


// ***** PAGE 2 *****

if (global.page == 2) {
	
	// deactivate next arrow
	instance_activate_object(obj_prev);
	instance_deactivate_object(obj_next);
	
	// deactivate bottom right craft boxes
	instance_deactivate_object(inst_545CDF79);
	instance_deactivate_object(inst_74C53F6E);
	
	// top left: metal axe
	if (global.wood >= 3 and global.metal >= 2) {
		instance_activate_object(inst_46AD3AB2);
		instance_deactivate_object(inst_2E7F1E03);
	}
	else if (global.wood < 3 or global.metal < 2) {
		instance_activate_object(inst_2E7F1E03);
		instance_deactivate_object(inst_46AD3AB2);
	}
	
	// bottom left: metal sword	
	if (global.wood >= 3 and global.metal >= 3 and not global.hasMetalSword) {
		instance_activate_object(inst_4AF6AB3D);
		instance_deactivate_object(inst_7229059F);
	}
	else if (global.wood < 3 or global.metal < 3) {
		instance_activate_object(inst_7229059F);
		instance_deactivate_object(inst_4AF6AB3D);
	}
	
	// top right: water purifier
	if (global.coconuts >= 2) {
		instance_activate_object(inst_7448FDB6);
		instance_deactivate_object(inst_3E7FC2F2);
	}
	else if (global.coconuts < 2) {
		instance_activate_object(inst_3E7FC2F2);
		instance_deactivate_object(inst_7448FDB6);
	}
			
		
}

	
	
// Check which "CRAFT" box was pressed by user 
// Remove resources after crafting new item

xx = mouse_x;
yy = mouse_y; 

click = mouse_check_button_pressed(mb_left);


// top left
if click and position_meeting(xx, yy, inst_46AD3AB2) {
	switch (global.page) {
		// fishing rod
		case 1:
			global.wood -= 3;
			global.spiderWebs -= 1;
			global.food -= 1;
			global.fishingRod = true;
			break;
		// metal axe
		case 2: 
			global.wood -= 3;
			global.metal -= 2;
			global.metalAxe = true;
			break;
	}
}


// bottom left
if click and position_meeting(xx, yy, inst_4AF6AB3D) {
	switch (global.page) {
		// bucket
		case 1:
			global.wood -= 4;
			global.emptyBucket = true;
			break;
		// metal sword
		case 2:
			if not global.hasMetalSword {
				global.wood -= 3;
				global.metal -= 3;
				global.metalSword = true;
				global.hasMetalSword = true;
			}
			break;
	}
}


// top right
if click and position_meeting(xx, yy, inst_7448FDB6) {
	switch (global.page) {
		// wooden axe
		case 1:
			global.wood -= 5;
			global.woodenSword = true;
			break;
		// water purifier
		case 2: 
			global.coconuts -= 2;
			global.waterPurifier = true;
			break;
	}
}


// bottom right
if click and position_meeting(xx, yy, inst_545CDF79) {
	switch (global.page) {
		// wooden sword
		case 1:
			global.wood -= 6;
			global.woodenSword = true;
			break;
	}
}