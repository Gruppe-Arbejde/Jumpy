/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
#macro GRAV .5
moveSpd= 2.0;
hspd = 0;
vspd = 0;
jumpForce = -15;
grounded = false;

fallThroughAmount = 5;

objectShowVspd = noone;
oIdent = noone;

audio_stop_all();
audio_play_sound(snd_hell, 100, true);