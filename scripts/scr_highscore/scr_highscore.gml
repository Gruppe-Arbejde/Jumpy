//files will be located at c:\Users\USERNAME\AppData\Local

function highscore_load(){
	var file = working_directory + "highscore";
	
	try {
		var handle = file_text_open_read(file)
		
		global.highscore = file_text_read_real(handle)
		
		file_text_close(handle)
	}catch (_exception) {
		global.highscore = 0;	
	}
}

function highscore_save(){
	var file = working_directory + "highscore"
	var handle = file_text_open_write(file);
	
	file_text_read_real(handle, global.highscore);
}