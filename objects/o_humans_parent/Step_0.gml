spawn_delay1 -= random_range(0.1, 1)
spawn_delay2 -= random_range(0.1, 1)
spawn_delay3 -= random_range(0.1, 1)
spawn_delay4 -= random_range(0.1, 1)
spawn_delay5 -= random_range(0.1, 1)
if(spawn_delay1 <= 0) {//TOP RIGHT
	var gender1 = choose(1,2)
	if(gender1 == 1) {
		instance_create_layer(920,random_range(285, 370), "Humans", o_human1)
	} else if(gender1 == 2) {
		instance_create_layer(920,random_range(285, 370), "Humans", o_human2)
	}
	spawn_delay1 = timer1
}
if(spawn_delay2 <= 0) {//TOP LEFT
	var gender2 = choose(1,2)
	if(gender2 == 1) {
		instance_create_layer(30,random_range(285, 370), "Humans", o_human1)
	} else if(gender2 == 2) {
		instance_create_layer(30,random_range(285, 370), "Humans", o_human2)
	}
	spawn_delay2 = timer2
}
if(spawn_delay3 <= 0) {//BOTTOM LEFT
	var gender3 = choose(1,2)
	if(gender3 == 1) {
		instance_create_layer(30,random_range(720, 780), "Humans", o_human1)
	} else if(gender3== 2) {
		instance_create_layer(30,random_range(720, 780), "Humans", o_human2)
	}
	spawn_delay3 = timer3
}
if(spawn_delay4 <= 0) {//BOTTOM RIGHT
	var gender4 = choose(1,2)
	if(gender4 == 1) {
		instance_create_layer(920,random_range(720, 780), "Humans", o_human1)
	} else if(gender4 == 2) {
		instance_create_layer(920,random_range(720, 780), "Humans", o_human2)
	}
	spawn_delay4 = timer4
}

if(spawn_delay5 <= 0) {//PIGS
	var gender5 = choose(1,2,3,4)
	if(gender5 == 1) {
		instance_create_layer(920,random_range(285, 370), "Humans", o_policeman)
	} else if(gender5 == 2) {
		instance_create_layer(30,random_range(285, 370), "Humans", o_policeman)
	} else if(gender5 == 3) {
		instance_create_layer(30,random_range(720, 780), "Humans", o_policeman)
	} else if(gender5 == 4) {
		instance_create_layer(920,random_range(720, 780), "Humans", o_policeman)
	}
	spawn_delay5 = timer5
}