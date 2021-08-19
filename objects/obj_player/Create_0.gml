/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
grv = GRAVITY;
walkSpeed = 2.0;

spriteIdle = spr_player;
localFrame = 0;

audio_stop_all();
audio_play_sound(snd_hell, 100, true);