if(x == 920) {
	scale = -1
	dir = -1
} else if(x == 30) {
	scale = 1
	dir = 1
}
human_speed = global.car_speed
hp = 7
maxHp = 7
flash = 0
flyspeed = 3.5
dead = false
dead2 = false
room_speed = 60
stop_timer = room_speed * random_range(1, 5)
stop = stop_timer
make_police = false