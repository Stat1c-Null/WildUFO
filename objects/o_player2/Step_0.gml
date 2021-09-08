/// @description 
hor_move = keyboard_check(vk_right) - keyboard_check(vk_left)
ver_move = keyboard_check(vk_down) - keyboard_check(vk_up)

if(global.energy2 > 0){
	x += hor_move * move_speed
	y += ver_move * move_speed
}

if (global.energy2 > 0) {
	global.energy2 -= 0.04
}
if(global.energy2 > global.energy_max2){
	global.energy2 = global.energy_max2	
}

if(global.energy2 <= 0 and global.two_player_mode == true){
	instance_create_layer(x,y,"Humans", o_gameover)
	o_gameover.player2 = true
}
/*
if(bump_delay == 0){
	bump_delay = timer	
	bump = false
}

if (place_meeting(x,y,o_player)){
	bump = true
}

while bump_delay > 0 and bump == true{
	bump_delay -= 0.5
	x += bump_power	
	y += bump_power
}
*/