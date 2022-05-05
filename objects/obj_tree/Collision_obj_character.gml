if (mouse_check_button_pressed(mb_left)) 
{
	if (global.itemInHand != obj_woodAxe and global.itemInHand != obj_metalAxe)
		treeToChop.health -= 1;
	else if (global.itemInHand == obj_woodAxe)
		treeToChop.health -= 5;
	else if (global.itemInHand == obj_metalAxe)
		treeToChop.health -= 10;
}
