/// @description 
hor_move = keyboard_check(ord("D")) - keyboard_check(ord("A"))
ver_move = keyboard_check(ord("S")) - keyboard_check(ord("W"))

x += hor_move * move_speed
y += ver_move * move_speed

if (global.energy > 0) {
	global.energy -= 0.01
}