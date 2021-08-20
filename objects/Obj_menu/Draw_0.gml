/// Text output to user

var i = 0;
draw_set_font(font_main); //sets the text as specified font
draw_set_halign(fa_center); //aligns text in the center
draw_set_color(c_ltgray); //sets the color of the text as light gray

//repeats the following code like a for loop
repeat(buttons) {
	draw_set_color(c_ltgray); //
	if (menu_index == i) draw_set_color(c_yellow);
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}