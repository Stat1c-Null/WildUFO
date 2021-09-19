if (hp <= 0 and instance_place(x,y,o_holo)){
	audio_play_sound(snd_humanpickup, 2, false)
	dead = true
} else if(hp <= 0 and instance_place(x,y,o_holo2)) {
	audio_play_sound(snd_humanpickup, 2, false)
	dead2 = true	
}

