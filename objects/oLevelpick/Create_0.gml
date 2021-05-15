#region
//shop Variables
LevelOpen = false;
global.shop = false;

global.money = score;
global.inv = ds_list_create();

selected = 0;

//Items
items = ds_list_create();

ds_list_add(items, ["Level picker", 0, ""]);
ds_list_add(items, ["Level 1", 0, "Press enter to goto level"]);
ds_list_add(items, ["Level 2", 0, "Press enter to goto level"]);
ds_list_add(items, ["Level 3", 0, "Press enter to goto level"]);
ds_list_add(items, ["Level 4", 0, "Press enter to goto level"]);
ds_list_add(items, ["Level 5", 0, "Press enter to goto level"]);
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
