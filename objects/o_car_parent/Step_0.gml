spawn_delay1 -= random_range(0.5, 1)
spawn_delay2 -= random_range(0.5, 1)

if(spawn_delay1 <= 0) {//LEFT SIDE
	var gender1 = choose(1,2,3,4,5)
	if(gender1 == 1 and global.police_leftLane == false) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_cabriolet)
	} else if(gender1 == 2 and global.police_leftLane == false) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_pickup)
	} else if(gender1 == 3 and global.police_leftLane == false) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_sedan)
	} else if(gender1 == 4 and global.police_leftLane == false) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_van)
	} else if(gender1 == 5 and global.police_leftLane == false) {
		global.police_leftLane = true
		instance_create_layer(30, random_range(605, 690), "Cars", o_police)
	}
	spawn_delay1 = timer1
}
if(spawn_delay2 <= 0) {//RIGHT SIDE
	var gender2 = choose(1,2,3,4,5)
	if(gender2 == 1 and global.police_rightLane == false) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_cabriolet)
	} else if(gender2 == 2 and global.police_rightLane == false) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_pickup)
	} else if(gender2 == 3 and global.police_rightLane == false) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_sedan)
	} else if(gender2 == 4 and global.police_rightLane == false) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_van)
	} else if(gender2 == 5 and global.police_rightLane == false) {
		global.police_rightLane = true
		instance_create_layer(920, random_range(480, 575), "Cars", o_police)
	}
	spawn_delay2 = timer1
}


