treeToChop =  instance_nearest(x, y, obj_tree);
fruitDrop = random_range(1,10);

if (treeToChop.health <= 0) 
{
	instance_destroy(treeToChop);
	global.wood += 2;
	if (fruitDrop > 5)
		global.fruit += 1;
}
