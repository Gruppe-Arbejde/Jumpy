//Creation of variables and position of text

death_menu_x = 640; //sets the x coordinate of text
death_menu_y = 560; //sets the y coordinate of text
button_h = 72; //sets the distance between text buttons

//credits
credit[0] = "GAME OVER!";
credits = array_length_1d(credit);

credits_x = 640; //sets the x coordinate of second text
credits_y = 490; //sets the y coordinate of second text
credits_h = 72; //sets the distance between additional text

// buttons
button[0] = "Go Back";
button[1] = "Credits";
buttons = array_length_1d(button);

menu_index = 0; //creation of variables
last_selected = 0;

audio_stop_all();
audio_play_sound(snd_death, 100, false);

t = font_add("min.ttf", 100, false, false, 32, 128);
t2 = font_add("min.ttf", 120, false, false, 32, 128);