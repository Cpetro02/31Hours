// Add item to inventory
function addToInventory(item) {
	
	// if inventory is not full
	if (!isInventoryFull()) {
		// add item to first empty slot
		firstEmptySlot();
		global.inventory[global.firstEmptySlot] = item;
	}
	else if (isInventoryFull()) {
		draw_text(obj_character.x, obj_character.y, "INVENTORY FULL");
	
	}
}


function setItemSlot(itemSpr) {
	addToInventory(itemSpr);
	
	global.itemToAdd2 = itemSpr;
	
	
	// If item is already in inventory, increase visual counter
	//if (isItemInInventory()
	
	switch(global.firstEmptySlot) 
	{		
		case 0: instance_activate_object(obj_inventory_1); break;
		case 1: instance_activate_object(obj_inventory_2); break;
		case 2: instance_activate_object(obj_inventory_3); break;
		case 3: instance_activate_object(obj_inventory_4); break;
		case 4: instance_activate_object(obj_inventory_5); break;
		case 5: instance_activate_object(obj_inventory_6); break;
		case 6: instance_activate_object(obj_inventory_7); break;
		case 7: instance_activate_object(obj_inventory_8); break;
		case 8: instance_activate_object(obj_inventory_9); break;
	}

}




function isItemInInventory(item) {
	itemInInventory = false;
	
	for (var i = 0; i < 9; i++) 
		if (global.inventory[i] == item) {
			itemInInventory = true;
			break;
		}
	
	return itemInInventory;
}


function isInventoryFull() {
	inventoryFull = true;
	
	for (var i = 0; i < 9; i++) 
		if (global.inventory[i] == pointer_null) {
			inventoryFull = false;
			break;
		}
	
	return inventoryFull;
	
}


function emptySlots() {
	
	emptySlots = 0;
	
	for (var i = 0; i < 9; i++) 
		if (global.inventory[i] == pointer_null) 
			emptySlots++;
		
	return emptySlots;
	
}

function firstEmptySlot() {
	
	for (var i = 0; i < 9; i++) {
		if (global.inventory[i] == pointer_null) {
			global.firstEmptySlot = i;
			break;
		}
	}
	
}
