image_xscale = scale
stop -= random_range(1, 1.2)

if(stop > 0) {
	x += human_speed * dir	
} else {
	human_speed = 0
}


//Destroy objects when they are outside the room
if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
{
    instance_destroy();
	if(y < 600){
		global.police_rightLane = false
	} else if(y > 600) {
		global.police_leftLane = false	
	}
}

//Suck player into UFo
if(dead == true){
	move_towards_point(o_player.x, o_player.y, flyspeed)
	if(instance_place(x, y,o_player)) {
		global.energy += 25
		instance_destroy()	
		if(y < 600){
			global.police_rightLane = false
		} else if(y > 600) {
			global.police_leftLane = false	
		}
	}
}
if(dead2 == true){
	move_towards_point(o_player2.x, o_player2.y, flyspeed)
	if(instance_place(x, y,o_player2)) {
		global.energy2 += 25
		instance_destroy()	
		if(y < 600){
			global.police_rightLane = false
		} else if(y > 600) {
			global.police_leftLane = false	
		}
	}
}