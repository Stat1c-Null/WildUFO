draw_set_font(f_text)

if(instance_exists(o_player)){
	//Energy
	draw_text_color(20,20, "ENERGY", c_fuchsia, c_fuchsia, c_purple, c_purple, 1)
	draw_sprite(s_back, 1, 20, 55)
	draw_sprite_ext(s_energy, 1, 20, 55, max(0, global.energy/global.energy_max), 1, 0, c_white, 1)
	//Overheat
	draw_text_color(670,20, "OVERHEAT", c_red, c_red, c_maroon, c_maroon, 1)
	draw_sprite(s_back, 1, 670, 55)
	draw_sprite_part_ext(s_overheat, 1, 0, 0, global.overheat, 38, 670, 55, 1, 1, c_white, 1)
	//Score
	draw_text_color(420, 20, "SCORE", c_yellow, c_yellow, c_orange, c_orange, 1)
	draw_text_color(460, 55, string(global.score_points), c_yellow, c_yellow, c_orange, c_orange, 1)
}
