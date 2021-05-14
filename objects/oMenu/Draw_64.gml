// Draw Menu

draw_set_font(Font2);
draw_set_halign(fa_bottom);
draw_set_valign(fa_bottom);


for (var i = 0; i < menu_items; i ++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_gray;
	}

	else 
	{
	 var col =  c_white;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.6));
	draw_set_color(c_black)
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
	
	

}

draw_set_font(Font6);
draw_set_color(c_grey);
draw_set_alpha(0.6);
draw_set_halign(fa_left);
draw_text(12,198,"The Quest for the \nSword of day");

draw_set_font(Font6);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_alpha(1000);
draw_text(15,200,"The Quest for the \nSword of day");



	