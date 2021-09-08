image_xscale = scale
if(hp == maxHp) {
	x += human_speed * dir
} else {
	x += human_speed * 1.6 * dir
	
}
//Destroy objects when they are outside thedwf room
if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
{
    instance_destroy();
}

//Suck player into UFo
if(dead == true){
	move_towards_point(o_player.x, o_player.y, flyspeed)
	if(instance_place(x, y,o_player)) {
		global.energy += 15
		instance_destroy()	
	}
}
if(dead2 == true){
	move_towards_point(o_player2.x, o_player2.y, flyspeed)
	if(instance_place(x, y,o_player2)) {
		global.energy2 += 15
		instance_destroy()	
	}
}
