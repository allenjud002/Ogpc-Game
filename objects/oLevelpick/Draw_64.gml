/// @desc Draw Pause
#region 
if (!LevelOpen) exit;

draw_set_font(Font_Pause);
draw_set_color(c_black);
draw_set_alpha(0.5);

draw_set_alpha(0.8);
draw_rectangle(menuMargin, 0 , menuMargin + menuWidth, guiHeight, 0);
draw_set_alpha(1);
draw_set_color(c_white);

//Draw Menu Items
for (var i = 0; i < itemCount; i ++) {
	
	//Get Item
	var arr = items[| i];
	var item = arr[0];
	
	
	//Set Position
	var _x = menuMargin + menuWidth/2;
	 var _y = (guiHeight/2) +(i - selected) * 64;
	 
	 
	 //Set Scale
	 var s = 1;
	 if (i == selected) item  = "> " + item + " <";
	   //draw Item
	   draw_set_halign(fa_center);
	   draw_set_valign(fa_middle);
	   draw_text_transformed(_x, _y, item, s, s, 0);
	   draw_set_valign(fa_top);
	   draw_set_halign(fa_left);
}


//get preveiw data
var arr = items[| selected];
var item = arr[0];
var price = arr[1];
var desc = arr[2];

// set pos
var _x = (menuMargin + menuWidth) + previewWidth/2;
var _y = (guiHeight/2);

//draw Preview Sprite
var spr = asset_get_index(item);


if (sprite_exists(spr)) {
	var s = 2;
	draw_sprite_ext(spr, 0, _x, _y, s, s, 0, -1, 1);
	
	
}
	
draw_set_color(c_black);
draw_set_valign(fa_bottom);


//draw Description
 
draw_set_font(Desc_font);
draw_set_color(c_white);
 draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(_x, _y + 80, desc);
draw_set_halign(fa_left);
draw_set_valign(fa_top);




draw_set_halign(fa_right);


#endregion

if (item = "Level 1") 
{
	if (keyboard_check(vk_enter))
	{
	room_goto(Level1);
	}
	
}


if (item = "Level 2") 
{
	if (keyboard_check(vk_enter))
	{
	room_goto(Level2);
	}
	
}


if (item = "Level 3") 
{
	if (keyboard_check(vk_enter))
	{
	room_goto(Level3);
	}
	
}


if (item = "Level 4") 
{
	if (keyboard_check(vk_enter))
	{
	room_goto(Level4);
	}
	
}


if (item = "Level 5") 
{
	if (keyboard_check(vk_enter))
	{
	room_goto(Level5);
	}
	
}