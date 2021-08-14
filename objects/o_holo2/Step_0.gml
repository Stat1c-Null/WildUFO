x = o_player2.x 
y = o_player2.y + 30
onKey = keyboard_check(ord("L"))
if(not onKey){
	global.overheat2 -= 0.9
	holoOn = false
} else if(onKey and global.overheat2 != global.overheat_max2) {
	global.overheat2 += 0.7	
	holoOn = true
}
//Check if overheat reached it's max
if (global.overheat2 == global.overheat_max2) {
	timer -= 1
	holoOn = false
	global.overheat2 = global.overheat_max2
}
if (timer == 0) {
	global.overheat2 -= 1
	timer = cooldownTimer
}
//Make sure overheat doesnt go overboard
if(global.overheat2 > global.overheat_max2) {
	global.overheat2 = global.overheat_max2	
} else if(global.overheat2 < 0){
	global.overheat2 = 0	
}

