if(x == 920) {
	scale = -1	
	dir = -1
} else if(x == 30) {
	scale = 1	
	dir = 1
}
human_speed = 1.5
hp = 6
maxHp = 6
flash = 0
dead = false
dead2 = false
flyspeed = 2.5
room_speed = 60
stop_timer = room_speed * random_range(1, 5)
stop = stop_timer
shoot = false
firingdelay = 0
timer6 = room_speed * 0.2
alarm[0] = timer6