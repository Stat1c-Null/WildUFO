image_speed = 1


//Shooting
if alarm[0] <= 0 {
	with(instance_create_layer(x,y,"Bullets", o_bullet))
	{
		speed = 15
		direction = point_direction(x,y,o_player.x, o_player.y) + random_range(-3, 3)
		image_angle = direction
	}
}

if alarm[0] <= 0 {
	alarm[0] = timer6	
}

if(o_player.x > 460) {
	image_xscale = 1	
} else if(o_player.x < 460) {
	image_xscale = -1	
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
		global.energy += 20
		instance_destroy()	
	}
}
if(dead2 == true){
	move_towards_point(o_player2.x, o_player2.y, flyspeed)
	if(instance_place(x, y,o_player2)) {
		global.energy2 += 20
		instance_destroy()	
	}
}
