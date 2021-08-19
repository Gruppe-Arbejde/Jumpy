/// @description Insert description here
// You can write your code in this editor

//draw_rectangle(bbox_left, bbox_top-50, bbox_right, bbox_bottom-8, true);

for(var i = 0; i < 8 ; i++)
{
	draw_point(bbox_left, bbox_top-(i * 4));
	draw_point(bbox_right, bbox_top-(i * 4));
	draw_point(bbox_left+(i*2), bbox_top-sprite_height*2);
	//draw_primitive_begin()
}

draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_colour(c_ltgray);

if(objectShowVspd != noone)
{
	draw_text(objectShowVspd.x, objectShowVspd.y-80, "vspd :" + string(floor(vspd)));
	
}


draw_set_colour(c_white);

