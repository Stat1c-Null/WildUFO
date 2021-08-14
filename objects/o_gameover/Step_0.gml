if(keyboard_check_pressed(ord("R"))){
	audio_play_sound(snd_menu, 2, false)
	if(global.two_player_mode == false){
		room_goto(r_level)	
	} else {
		room_goto(r_level2)	
	}
} else if(keyboard_check_pressed(ord("M"))){
	audio_play_sound(snd_menu, 2, false)
	audio_stop_sound(snd_music)
	room_goto(r_menu)	
}