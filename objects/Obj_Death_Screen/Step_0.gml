///Key press detection and button selection
if (allowmove == true){
menu_move = keyboard_check_pressed(vk_down) or (gamepad_axis_value(4, gp_axislh) > 0.4) - keyboard_check_pressed(vk_up); //detects if arrow keys is pressed

menu_index += menu_move;

if (menu_index < 0) menu_index = buttons - 1; //prevents the menu_index variable to go specified parameters
if (menu_index > buttons - 1) menu_index = 0; //gives the user the ability to loop buttons

if (menu_index != last_selected) audio_play_sound(snd_menu_switch, 100, false); //plays sound if new button is selected

last_selected = menu_index;
allowmove = false;
	alarm_set(0,5);
}

if gamepad_button_check_pressed(4, gp_face4){
	switch(menu_index) {

		case 0: //go back button
			room_goto(Room_Start_menu)
			audio_play_sound(snd_menu_select, 100, false);
			break;
		case 1: //credits button
			room_goto(Room_credits)
			audio_play_sound(snd_menu_select, 100, false);
			break;
	}
}