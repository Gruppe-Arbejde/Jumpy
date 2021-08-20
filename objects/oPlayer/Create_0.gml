/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
GRAV = 0.8;
moveSpd= 2.0;
hspd = 0;
vspd = 0;
jumpForce = -15;
objectShowVspd = noone;

spriteIdle = spr_player;
spriteRun = spr_playerRun;
spriteJump = spr_playerJump;
localFrame = 0;

audio_stop_all();
audio_play_sound(snd_hell, 100, true);