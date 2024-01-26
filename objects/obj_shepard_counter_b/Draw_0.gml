if (instance_exists(obj_shepard)) {
    draw_set_font(fnt_text_16_bold);
	draw_text(x, y,
		"x: \n" + string(obj_shepard.x) +
		"\ny: \n" + string(obj_shepard.y) +
		"\nmove x: \n" + string(obj_shepard.move_x) +
		"\nmove y: \n" + string(obj_shepard.move_y) +
		"\ndeaths: \n" + string(obj_shepard.deaths_total	) +
		"\nvelocity x: \n" + string(obj_shepard.phy_linear_velocity_x) +
		"\nvelocity y: \n" + string(obj_shepard.phy_linear_velocity_y) +
		"\nvelocity angle: \n" + string(obj_shepard.phy_angular_velocity) +
		"\nlast x: \n" + string(obj_shepard.last_x) +
		"\nlast y: \n" + string(obj_shepard.last_y) +
		"\nsteps x: \n" + string(obj_shepard.steps_x) +
		"\nsteps y: \n" + string(obj_shepard.steps_y) +
		"\nsteps x persist: \n" + string(obj_shepard.steps_x_persist) +
		"\nsteps y persist: \n" + string(obj_shepard.steps_y_persist) +
		"\nswipe: \n" + string(obj_shepard.swipe_total) +
		"\nbash: \n" + string(obj_shepard.bash_total) +
		"\nmob contact: \n" + string(obj_shepard.mob_total_contact_shepard) +
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
