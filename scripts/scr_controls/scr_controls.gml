///@description controls
function scr_controls() {

	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	keyRight = gamepad_axis_value(4, gp_axislh) > 0.2;
	keyLeft = gamepad_axis_value(4, gp_axislh) < -0.2;
	down = keyboard_check(ord("S") or gamepad_button_check_pressed(4, gp_face3));
	jump = keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(4, gp_face4);
	jumpReleased = keyboard_check_released(vk_space) or gamepad_button_check_pressed(4, gp_face4);
	//joyJump = gamepad_button_check_pressed(4, gp_face4)
	
	keyboard_set_map(right, vk_right);
	keyboard_set_map(left, vk_left);
}
