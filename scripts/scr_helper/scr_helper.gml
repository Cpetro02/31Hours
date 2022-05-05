// Script for utility and helper functions

// Initial viewport
current_viewport = 0;

// Set viewport
function set_viewport(port_num)
{
  // Check if the desired viewport is already the one in use
  if(view_visible[port_num])
  {
	return;  
  }
  
  for(var i = 0; i < 8; i++)
  {
	if(i == port_num)
	{
		view_visible[i] = 1;	
		current_viewport = i;
	}
	else {
		view_visible[i] = 0;	
	}
  }

}
