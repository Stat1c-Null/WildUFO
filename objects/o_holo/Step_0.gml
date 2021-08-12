x = o_player.x 
y = o_player.y + 30

if(not onKey){
	global.overheat -= 0.5	
} else if(onKey) {
	global.overheat += 0.8	
}