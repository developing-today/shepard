if obj_shepard.fuel_follow == true {
	follow_shepard()
} else {
	var _force = 9.8 * phy_mass;
	physics_apply_force(x, y, 0, _force);
    handle_fuel_shepard_interaction()
	handle_fuel_shepard_staff_interaction()
}
