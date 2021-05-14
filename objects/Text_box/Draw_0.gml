/// @description  Draw the text box and caption

draw_self();

draw_set_halign(fa_left);
draw_set_color(c_gray);
draw_set_font(GameFont);


draw_text(x + 8, y + 15, string(global.text));



