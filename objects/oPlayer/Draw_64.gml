/// @description Insert description here
// You can write your code in this editor
draw_set_font(font_main); //sets the text as specified font
draw_set_halign(fa_center); //aligns text in the center
draw_set_color(c_ltgray); //sets the color of the text as light gray


var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

draw_text(vx, vy, global.current_score);