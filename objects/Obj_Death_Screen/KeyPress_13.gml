//checks the number of menu index to determine what button is pressed
switch(menu_index) {

	case 0: //go back button
		room_goto(Room_Start_menu)
		audio_stop_all();
		audio_play_sound(snd_menu_select, 100, false);
		break;
	case 1: //credits button
		room_goto(Room_credits)
		audio_play_sound(snd_menu_select, 100, false);
		break;
}
