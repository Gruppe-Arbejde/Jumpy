///Key press detection and button selection

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up); //detects if arrow keys is pressed

menu_index += menu_move;

if (menu_index < 0) menu_index = buttons - 1; //prevents the menu_index variable to go specified parameters
if (menu_index > buttons - 1) menu_index = 0; //gives the user the ability to loop buttons

if (menu_index != last_selected) audio_play_sound(snd_menu_switch, 100, false); //plays sound if new button is selected

last_selected = menu_index;

