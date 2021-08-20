///@description controls
function scr_controls() {

	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	down = keyboard_check(ord("S"));
	jump = keyboard_check_pressed(vk_space);
	jumpReleased = keyboard_check_released(vk_space);

	//Calculate movement
	//inputDirection = point_direction(0,0,right-left, 0);
	//inputMagnitude = (right - left != 0);

	keyboard_set_map(right, vk_right);
	keyboard_set_map(left, vk_left);
}
