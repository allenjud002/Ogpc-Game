#region move the view

halfVeiwWidth = camera_get_view_width(view_camera[0]) / 2;
halfVeiwHeight = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], x - halfVeiwWidth, y - halfVeiwHeight);

#endregion

