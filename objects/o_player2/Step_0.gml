/// @description 
hor_move = keyboard_check(vk_right) - keyboard_check(vk_left)
ver_move = keyboard_check(vk_down) - keyboard_check(vk_up)

if(global.energy2 > 0){
	x += hor_move * move_speed
	y += ver_move * move_speed
}

if (global.energy2 > 0) {
	global.energy2 -= 0.08
}
if(global.energy2 > global.energy_max2){
	global.energy2 = global.energy_max2	
}

if(global.energy2 <= 0 and global.two_player_mode == true){
	instance_create_layer(x,y, "Instances", o_gameover)
	o_gameover.player2 = true
}