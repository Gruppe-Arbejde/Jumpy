//Creation of variables and position of text

menu_x = 640; //sets the x coordinate of text
menu_y = 430; //sets the y coordinate of text
button_h = 72; //sets the distance between text buttons

//buttons
button[0] = "Go Back";
button[1] = "Exit";
buttons = array_length_1d(button);

credits_x = 640; //sets the x coordinate of second text
credits_y = 580; //sets the y coordinate of second text
credits_h = 72; //sets the distance between additional text

//highscore
credit[0] = "Highscore";
credit[1] = string(global.highscore);
credits = array_length_1d(credit);

menu_index = 0; //creation of variables
last_selected = 0;

if (audio_is_playing(snd_menu_music) == false) audio_play_sound(snd_menu_music,99,true); 

allowmove = true;