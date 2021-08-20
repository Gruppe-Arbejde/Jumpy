//checks the number of menu index to determine what button is pressed
switch(menu_index) {

	case 0: //start button
		room_goto(room0)
		audio_play_sound(snd_menu_select, 100, false);
		break;
	case 1: //leaderboard button (highscore)
		room_goto(Room_Leaderboard)
		audio_play_sound(snd_menu_select, 100, false);
		break;
	case 2: //exit
		game_end();
		break;
}
