//checks the number of menu index to determine what button is pressed


switch(menu_index) {

	case 0: //go back button
		room_goto(Room_Start_menu)
		audio_play_sound(snd_menu_select, 100, false);
		//show_debug_message("NEW MENU");
		break;
	case 1: //leaderboard button
		game_end();
		break;

}


