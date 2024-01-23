if (instance_exists(obj_shepard)) {
    draw_set_color(c_white);
	draw_text(x, y,
		"score:\n0"+
		"\ndeaths: \n" + string(obj_shepard.deaths_total	) +
		"\nlast x: \n" + string(obj_shepard.last_x) +
		"\nlast y: \n" + string(obj_shepard.last_y) +
		"\nsteps x: \n" + string(obj_shepard.steps_x) +
		"\nsteps y: \n" + string(obj_shepard.steps_y) +
		"\nsteps x persist: \n" + string(obj_shepard.steps_x_persist) +
		"\nsteps y persist: \n" + string(obj_shepard.steps_y_persist) +
		"\nsteps up: \n" + string(obj_shepard.steps_up) +
		"\nsteps down: \n" + string(obj_shepard.steps_down) +
		"\nsteps left: \n" + string(obj_shepard.steps_left) +
		"\nsteps right: \n" + string(obj_shepard.steps_right) +
		"\n"	
	);
} else {
    show_debug_message("obj_shepard does not exist or is not a valid instance.");
	draw_text(x, y, "uhh...")
}
