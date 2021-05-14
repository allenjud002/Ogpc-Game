#region
//shop Variables
PauseOpen = false;
global.shop = false;

global.money = score;
global.inv = ds_list_create();

selected = 0;

//Items
items = ds_list_create();


ds_list_add(items, ["Previous Level", 0, "Press enter to goto previous level"]);
ds_list_add(items, ["help", 0, "Use the arrow keys to move around.\n and have fun!"]);
ds_list_add(items, ["Quit", 0, "Press Enter To Exit"]);
ds_list_add(items, ["Restart Game", 0, "Press Enter To Restart Game"]);
ds_list_add(items, ["Restart Level", 0, "Press Enter To Restart Level"]);
itemCount = ds_list_size(items);


//GUI Properties
display_set_gui_size(1280,720);
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

menuWidth = guiWidth * 0.3;
menuMargin = guiWidth * 0.1;


previewWidth = (guiWidth - (menuWidth + menuMargin));

can_buy = true;

#endregion
