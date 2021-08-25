///@description jumpingCode
function scr_jumpCode() {

	if(jump)
	{
		vspd = jumpForce
		audio_play_sound(snd_jump, 100, false);	
	}
	//else if(joyJump)
	//{
	//	vspd = jumpForce;	
	//}

}
