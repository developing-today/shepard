if (instance_exists(obj_shepard)) {
    draw_set_color(c_white);
	draw_text(x, y,
		"move x: \n" + string(obj_shepard.move_x) +
		"\nmove y: \n" + string(obj_shepard.move_y) +
		"\n"	
	);
} else {
    show_debug_message("obj_shepard does not exist or is not a valid instance.");
	draw_text(x, y, "uhh...")
}
