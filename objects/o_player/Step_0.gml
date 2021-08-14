/// @description 
hor_move = keyboard_check(ord("D")) - keyboard_check(ord("A"))
ver_move = keyboard_check(ord("S")) - keyboard_check(ord("W"))

if(global.energy > 0){
	x += hor_move * move_speed
	y += ver_move * move_speed
}

if (global.energy > 0) {
	global.energy -= 0.08
}
if(global.energy > global.energy_max){
	global.energy = global.energy_max	
}

if(global.energy <= 0 and global.two_player_mode == false) {
	instance_create_layer(x,y, "Instances", o_gameover)
	o_gameover.singleplayer = true
	
} else if(global.energy <= 0 and global.two_player_mode == true){
	instance_create_layer(x,y, "Instances", o_gameover)
	o_gameover.player1 = true
}