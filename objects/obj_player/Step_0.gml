//Get player input
keyLeft = keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyJump = keyboard_check(vk_up) or keyboard_check(vk_space);

//Calculate movement
inputDirection = point_direction(0,0,keyRight-keyLeft, 0);
inputMagnitude = (keyRight - keyLeft != 0);

hSpeed = lengthdir_x(inputMagnitude * walkSpeed, inputDirection);
//vSpeed = lengthdir_y(inputMagnitude * walkSpeed, inputDirection) + grv;
vSpeed += grv;


//Jump
if(place_meeting(x,y+1,obj_wall)) && (keyJump)
{
	vSpeed = JUMP_HEIGHT;
	audio_play_sound(snd_jump, 100, false);
}

//Horizontal collision
if(place_meeting(x+hSpeed,y,obj_wall))
{
	while(!place_meeting(x+sign(hSpeed),y,obj_wall))
	{
		x = x + sign(hSpeed);
	}
	hSpeed = 0;
}

x += hSpeed;

//Vertical collision
if(place_meeting(x,y+vSpeed,obj_wall))
{
	while(!place_meeting(x,y+sign(vSpeed),obj_wall))
	{
		y = y + sign(vSpeed);
	}
	vSpeed = 0;
}

y += vSpeed;

//Restart player on void enter
if (y > room_height)
{
	room_goto(Room_Death_Screen);
	//instance_destroy(self);
	//instance_create_layer(288,448,"Instances",obj_player);
}

//Update sprite index
var _oldsprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteIdle;
}else sprite_index = spriteIdle;
if(_oldsprite != sprite_index) localFrame = 0;

//Update image index
PlayerAnimationSprite();