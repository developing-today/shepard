if (instance_exists(obj_shepard)) {
    draw_set_font(fnt_text_16_bold);
	draw_text(x, y,
""
	);
} else {
    show_debug_message("obj_shepard does not exist or is not a valid instance.");
	draw_text(x, y, "uhh...")
}
