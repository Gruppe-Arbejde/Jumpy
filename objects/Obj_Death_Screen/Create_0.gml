//Creation of variables and position of text

menu_x = 640; //sets the x coordinate of text
menu_y = 540; //sets the y coordinate of text
button_h = 72; //sets the distance between text buttons

//credits
credit[0] = "YOU ARE DEAD";
credits = array_length_1d(credit);

credits_x = 640; //sets the x coordinate of text
credits_y = 120; //sets the y coordinate of text
credits_h = 72; //sets the distance between text buttons

// buttons
button[0] = "Go Back";
button[1] = "Exit";
buttons = array_length_1d(button);

menu_index = 0; //creation of variables
last_selected = 0;

audio_stop_all();
audio_play_sound(snd_death, 100, false);
