/// @description Insert description here

if(global.current_score > global.highscore) {
	//set the highscore
	global.highscore = global.current_score;

	//save the highscore
	highscore_save();
}