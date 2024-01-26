if (instance_exists(obj_shepard)) {
    draw_set_font(fnt_text_16_bold);
	draw_text(x, y,
		"score:\n0"+
"\ndeaths_total: \n" + string(obj_shepard.deaths_total) +
"\nships_total: \n" + string(obj_shepard.ships_total) +
"\n\nswipe_total_contact_mob: \n" + string(obj_shepard.swipe_total_contact_mob) +
"\nswipe_total_contact_squiggle_micro: \n" + string(obj_shepard.swipe_total_contact_squiggle_micro) +
"\nswipe_total_contact_squiggle_tiny: \n" + string(obj_shepard.swipe_total_contact_squiggle_tiny) +
"\nswipe_total_contact_squiggle_normal: \n" + string(obj_shepard.swipe_total_contact_squiggle_normal) +
"\ndrive_total: \n" + string(obj_shepard.drive_total) +
"\ndrive_total_contact_mob: \n" + string(obj_shepard.drive_total_contact_mob) +
"\ndrive_total_contact_squiggle_micro: \n" + string(obj_shepard.drive_total_contact_squiggle_micro) +
"\ndrive_total_contact_squiggle_tiny: \n" + string(obj_shepard.drive_total_contact_squiggle_tiny) +
"\ndrive_total_contact_squiggle_normal: \n" + string(obj_shepard.drive_total_contact_squiggle_normal) +
"\nbash_total_contact_mob: \n" + string(obj_shepard.bash_total_contact_mob) +
"\nbash_total_contact_squiggle_micro: \n" + string(obj_shepard.bash_total_contact_squiggle_micro) +
"\nbash_total_contact_squiggle_tiny: \n" + string(obj_shepard.bash_total_contact_squiggle_tiny) +
"\nbash_total_contact_squiggle_normal: \n" + string(obj_shepard.bash_total_contact_squiggle_normal) +
"\ncast_total: \n" + string(obj_shepard.cast_total) +
"\ncast_total_contact_mob: \n" + string(obj_shepard.cast_total_contact_mob) +
"\ncast_total_contact_squiggle_micro: \n" + string(obj_shepard.cast_total_contact_squiggle_micro) +
"\ncast_total_contact_squiggle_tiny: \n" + string(obj_shepard.cast_total_contact_squiggle_tiny) +
"\ncast_total_contact_squiggle_normal: \n" + string(obj_shepard.cast_total_contact_squiggle_normal) +
"\nspark_total: \n" + string(obj_shepard.spark_total) +
"\nspark_total_contact_mob: \n" + string(obj_shepard.spark_total_contact_mob) +
"\nspark_total_contact_squiggle_micro: \n" + string(obj_shepard.spark_total_contact_squiggle_micro) +
"\nspark_total_contact_squiggle_tiny: \n" + string(obj_shepard.spark_total_contact_squiggle_tiny) +
"\nspark_total_contact_squiggle_normal: \n" + string(obj_shepard.spark_total_contact_squiggle_normal) +
"\nmob_total: \n" + string(obj_shepard.mob_total) +
"\nmob_total_killed: \n" + string(obj_shepard.mob_total_killed) +
"\nmob_total_penned: \n" + string(obj_shepard.mob_total_penned) +
"\nmob_total_donated: \n" + string(obj_shepard.mob_total_donated) +
"\nmob_total_contact_mob: \n" + string(obj_shepard.mob_total_contact_mob) +
"\nmob_total_contact_squiggle_micro: \n" + string(obj_shepard.mob_total_contact_squiggle_micro) +
"\nmob_total_contact_squiggle_tiny: \n" + string(obj_shepard.mob_total_contact_squiggle_tiny) +
"\nmob_total_contact_squiggle_normal: \n" + string(obj_shepard.mob_total_contact_squiggle_normal) +
"\nsquiggle_micro_total: \n" + string(obj_shepard.squiggle_micro_total) +
"\nsquiggle_micro_total_cycled: \n" + string(obj_shepard.squiggle_micro_total_cycled) +
"\nsquiggle_micro_total_killed: \n" + string(obj_shepard.squiggle_micro_total_killed) +
"\nsquiggle_micro_total_killed: \n" + string(obj_shepard.squiggle_micro_total_killed) +
"\nsquiggle_micro_total_penned: \n" + string(obj_shepard.squiggle_micro_total_penned) +
"\nsquiggle_micro_total_donated: \n" + string(obj_shepard.squiggle_micro_total_donated) +
"\nsquiggle_micro_total_contact_shepard: \n" + string(obj_shepard.squiggle_micro_total_contact_shepard) +
"\nsquiggle_micro_total_contact_mob: \n" + string(obj_shepard.squiggle_micro_total_contact_mob) +
"\nsquiggle_micro_total_contact_squiggle_micro: \n" + string(obj_shepard.squiggle_micro_total_contact_squiggle_micro) +
"\nsquiggle_micro_total_contact_squiggle_tiny: \n" + string(obj_shepard.squiggle_micro_total_contact_squiggle_tiny) +
"\nsquiggle_micro_total_contact_squiggle_normal: \n" + string(obj_shepard.squiggle_micro_total_contact_squiggle_normal) +
"\nsquiggle_tiny_total: \n" + string(obj_shepard.squiggle_tiny_total) +
"\nsquiggle_tiny_total_cycled: \n" + string(obj_shepard.squiggle_tiny_total_cycled) +
"\nsquiggle_tiny_total_killed: \n" + string(obj_shepard.squiggle_tiny_total_killed) +
"\nsquiggle_tiny_total_killed: \n" + string(obj_shepard.squiggle_tiny_total_killed) +
"\nsquiggle_tiny_total_penned: \n" + string(obj_shepard.squiggle_tiny_total_penned) +
"\nsquiggle_tiny_total_donated: \n" + string(obj_shepard.squiggle_tiny_total_donated) +
"\nsquiggle_tiny_total_contact: \n" + string(obj_shepard.squiggle_tiny_total_contact) +
"\nsquiggle_tiny_total_contact_shepard: \n" + string(obj_shepard.squiggle_tiny_total_contact_shepard) +
"\nsquiggle_tiny_total_contact_mob: \n" + string(obj_shepard.squiggle_tiny_total_contact_mob) +
"\nsquiggle_tiny_total_contact_squiggle_micro: \n" + string(obj_shepard.squiggle_tiny_total_contact_squiggle_micro) +
"\nsquiggle_tiny_total_contact_squiggle_tiny: \n" + string(obj_shepard.squiggle_tiny_total_contact_squiggle_tiny) +
"\nsquiggle_tiny_total_contact_squiggle_normal: \n" + string(obj_shepard.squiggle_tiny_total_contact_squiggle_normal) +
"\nsquiggle_normal_total: \n" + string(obj_shepard.squiggle_normal_total) +
"\nsquiggle_normal_total_cycled: \n" + string(obj_shepard.squiggle_normal_total_cycled) +
"\nsquiggle_normal_total_killed: \n" + string(obj_shepard.squiggle_normal_total_killed) +
"\nsquiggle_normal_total_killed: \n" + string(obj_shepard.squiggle_normal_total_killed) +
"\nsquiggle_normal_total_penned: \n" + string(obj_shepard.squiggle_normal_total_penned) +
"\nsquiggle_normal_total_donated: \n" + string(obj_shepard.squiggle_normal_total_donated) +
"\nsquiggle_normal_total_contact: \n" + string(obj_shepard.squiggle_normal_total_contact) +
"\nsquiggle_normal_total_contact_shepard: \n" + string(obj_shepard.squiggle_normal_total_contact_shepard) +
"\nsquiggle_normal_total_contact_mob: \n" + string(obj_shepard.squiggle_normal_total_contact_mob) +
"\nsquiggle_normal_total_contact_squiggle_micro: \n" + string(obj_shepard.squiggle_normal_total_contact_squiggle_micro) +
"\nsquiggle_normal_total_contact_squiggle_tiny: \n" + string(obj_shepard.squiggle_normal_total_contact_squiggle_tiny) +
"\nsquiggle_normal_total_contact_squiggle_normal: \n" + string(obj_shepard.squiggle_normal_total_contact_squiggle_normal) +
"\npuddle_total: \n" + string(obj_shepard.puddle_total) +
"\npuddle_total_consumed: \n" + string(obj_shepard.puddle_total_consumed) +
"\npuddle_total_supplied: \n" + string(obj_shepard.puddle_total_supplied) +
"\nfuel_total: \n" + string(obj_shepard.fuel_total) +
"\nfuel_total_consumed: \n" + string(obj_shepard.fuel_total_consumed) +
"\nfuel_total_supplied: \n" + string(obj_shepard.fuel_total_supplied) +
"\nexplosions_total: \n" + string(obj_shepard.explosions_total) +
"\nsuper_explosions_total: \n" + string(obj_shepard.super_explosions_total) +
"\nresets_total: \n" + string(obj_shepard.resets_total)
	);
} else {
    show_debug_message("obj_shepard does not exist or is not a valid instance.");
	draw_text(x, y, "uhh...")
}
