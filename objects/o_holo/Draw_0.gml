onKey = keyboard_check(ord("K"))
if (onKey and global.overheat < global.overheat_max and global.energy > 0){
	draw_self()
	global.energy -= 0.01
}