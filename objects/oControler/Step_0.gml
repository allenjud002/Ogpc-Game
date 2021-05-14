if (shake)
{
	
	
	var range = 10;
	camera_set_view_pos(view_camera[0], view_x+random_range(-range, range), view_y+random_range(-range, range));

}
else
{
	camera_set_view_pos(view_camera[0], view_x, view_y);
}