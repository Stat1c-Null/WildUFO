/// @description 
//use other so we can refer to specific enemy we hit, not just every enemy on the map
with (other) {
	global.energy--
	flash = 3
} 

instance_destroy()