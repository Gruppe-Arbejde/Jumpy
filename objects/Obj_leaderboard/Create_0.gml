//Creation of variables and position of text

menu_x = 640; //sets the x coordinate of text
menu_y = 340; //sets the y coordinate of text
button_h = 72; //sets the distance between text buttons

// buttons
button[0] = "Go Back";
button[1] = "Exit";
buttons = array_length_1d(button);

menu_index = 0; //creation of variables
last_selected = 0;

if (audio_is_playing(snd_menu_music) = false) audio_play_sound(snd_menu_music,99,true); 
