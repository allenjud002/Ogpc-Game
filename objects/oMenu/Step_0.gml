
menu_x += (menu_x_target - menu_x) / menu_speed;


if (menu_control)

{
	if (keyboard_check_pressed(vk_up))
	{
	menu_cursor++;
	if (menu_cursor >= menu_items) menu_cursor = 0;
	} 

 if (keyboard_check_pressed(vk_down))
	{
	menu_cursor--;
	if (menu_cursor < 0) menu_cursor =  menu_items - 1;
	} 

	 if (keyboard_check_pressed(vk_enter))
	{
	 menu_x_target = gui_width+500;
	 menu_committed = menu_cursor;
	 menu_control = false;
	}

}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2:  room_goto(RPG_Center); break;
		case 1:  
		{
			if (!file_exists(SAVEFILE))
			{
				room_goto_next();
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target  = file_text_read_real(file) 
				file_text_close(file);
				room_goto(target);
				instance_create_layer(x,y,"Player",oGame);
				instance_create_layer(x,y,"Player",oPause);
			
				
			}
			
		}
		break;
		case 0: default: game_end() ; break;
	}
}