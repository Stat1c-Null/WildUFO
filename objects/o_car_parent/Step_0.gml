spawn_delay1 -= random_range(0.5, 1)
spawn_delay2 -= random_range(0.5, 1)

if(spawn_delay1 <= 0) {//LEFT SIDE
	var gender1 = choose(1,2,3,4)
	if(gender1 == 1) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_cabriolet)
	} else if(gender1 == 2) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_pickup)
	} else if(gender1 == 3) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_sedan)
	} else if(gender1 == 4) {
		instance_create_layer(30,random_range(605, 690), "Cars", o_van)
	}
	spawn_delay1 = timer1
}
if(spawn_delay2 <= 0) {//RIGHT SIDE
	var gender2 = choose(1,2,3,4)
	if(gender2 == 1) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_cabriolet)
	} else if(gender2 == 2) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_pickup)
	} else if(gender2 == 3) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_sedan)
	} else if(gender2 == 4) {
		instance_create_layer(920,random_range(480, 575), "Cars", o_van)
	}
	spawn_delay2 = timer1
}
