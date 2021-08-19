///@description controls
function scr_controls() {

	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	down = keyboard_check(ord("S"));
	jump = keyboard_check_pressed(vk_space);
	jumpReleased = keyboard_check_released(vk_space);

	keyboard_set_map(right, vk_right);
	keyboard_set_map(left, vk_left);
}
