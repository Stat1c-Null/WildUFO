image_xscale = scale
if(make_police == false){
	stop -= random_range(1, 1.2)
}

if(stop > 0) {
	x += human_speed * dir	
} else {
	human_speed = 0
	make_police = true
	stop = 10000
}

if make_police == true {
	with(instance_create_layer(x,y-20,"Humans", o_policeman_driver2)) {
		o_policeman_driver2.firingdelay = 10
	}
	make_police = false
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
		global.energy += 30
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
		global.energy2 += 30
		instance_destroy()	
		if(y < 600){
			global.police_rightLane = false
		} else if(y > 600) {
			global.police_leftLane = false	
		}
	}
}