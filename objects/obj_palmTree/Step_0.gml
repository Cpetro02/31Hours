palmTreeToChop =  instance_nearest(x, y, obj_palmTree);

if (palmTreeToChop.cocoHealth == 0 and palmTreeToChop.coco == true) 
{
	global.coconuts += 1;
	 palmTreeToChop.coco = false;
}
