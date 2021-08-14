onKey = keyboard_check(ord("L"))
if (onKey and global.overheat2 < global.overheat_max2 and global.energy2 > 0){
	draw_self()
	global.energy2 -= 0.05
}