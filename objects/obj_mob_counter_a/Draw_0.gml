if view_camera[2] {
	draw_set_color(c_white);
	draw_text(x, y,
		"mobs: " + string(instance_number(obj_mob))
		+ "\n                squiggles: " + string(instance_number(obj_squiggle_active))
		+ " " + string(instance_number(obj_squiggle_normal))
		+ " " + string(instance_number(obj_squiggle_tiny))
		+ " " + string(instance_number(obj_squiggle_micro))
	);
}