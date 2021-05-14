var halfw = w * 0.5;


// draw the box
draw_set_color(c_white);
draw_set_alpha(0.45);
draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y,15,15,false);

draw_set_alpha(1);

//draw Text
draw_set_color(c_black);
draw_set_font(Font1);
draw_set_halign(fa_center); 
draw_set_valign(fa_top);

draw_text(x,y-h-border,text_current); 