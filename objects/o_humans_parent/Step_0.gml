spawn_delay -= 1

if(spawn_delay == 0) {
	
	instance_create_layer(920,random_range(285, 380), "Humans", o_human2)
	if(choice == 1) {
		instance_create_layer(920,random_range(285, 380), "Humans", o_human1)
			spawn_delay = timer
	} else if(choice == 2) {
		instance_create_layer(30,random_range(285, 380), "Humans", o_human1)
			spawn_delay = timer
	} else if(choice == 3) {
		instance_create_layer(30,random_range(760, 820), "Humans", o_human1)
			spawn_delay = timer
	} else if(choice == 4) {
		instance_create_layer(920,random_range(760, 820), "Humans", o_human1)
			spawn_delay = timer
	}
}