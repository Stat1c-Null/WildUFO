x = o_player.x 
y = o_player.y + 30
onKey = keyboard_check(ord("F")) or keyboard_check(ord("K"))
if(not onKey){
	global.overheat -= 0.6	
	holoOn = false
} else if(onKey and global.overheat != global.overheat_max) {
	global.overheat += 0.7	
	holoOn = true
}
//Check if overheat reached it's max
if (global.overheat == global.overheat_max) {
	timer -= 1
	holoOn = false
	global.overheat = global.overheat_max
}
if (timer == 0) {
	global.overheat -= 1
	timer = cooldownTimer
}
//Make sure overheat doesnt go overboard
if(global.overheat > global.overheat_max) {
	global.overheat = global.overheat_max	
} else if(global.overheat < 0){
	global.overheat = 0	
}

