if view_camera[2] {
	var _mob_count = instance_number(obj_mob);
	draw_set_color(c_white);
	draw_text(x, y,
		"mobs: " + string(_mob_count)
	);
}