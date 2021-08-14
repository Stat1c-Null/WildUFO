var up, down, accept 

up 	   = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)
down   = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)
accept = keyboard_check_pressed(ord("F")) or keyboard_check_pressed(vk_enter)
//Go Up
if up {
	image_index--	
	audio_play_sound(snd_menu, 2, false)
}
//Go Down
if down {
	image_index++
	audio_play_sound(snd_menu, 2, false)
}

if(image_index > 2){
	image_index = 0	
} else if(image_index < 0) {
	image_index = 0	
}
//1 player 
if image_index == 0 and accept {
	room_goto(r_level)	
}
//2 players
if image_index == 1 and accept {
	global.two_player_mode = true
	room_goto(r_level2)
}
//Quit the game
if image_index == 2 and accept {
	game_end()	
}