function swipe_staff() {
	var _xscale = image_index
	var _pos = 1
	if _xscale == 1 {
		_pos = -1
	}
	var _x_translate = (64 * _pos) - 64
	var _y_translate = 32
	var _x = x + _x_translate
	var _y = y + _y_translate
	
	with (instance_create_depth(_x, _y, depth, obj_shepard_staff)) {
        xscale = 0.5;
        yscale = 0.5;
        phy_rotation = 50;

    // Check if xscale is inverted
        if (_pos == 1) {
			_this_target_angle = -230; // Change rotation direction if xscale is negative
        } else {
            _this_target_angle = 230;
		}

        _this_start_angle = phy_rotation;
        _this_lerp_time_initial = 2;
        _this_lerp_time = _this_lerp_time_initial

        phy_density = 100;
        phy_restitution = 1;
        phy_linear_damping = 0.5;
        phy_friction = 0;
        image_xscale = _pos;

        _this_force_dir = phy_rotation
        _this_force_power = 5000;

    alarm[2] = 1; // apply_lerp_rotation_alarm_2
    alarm[1] = 1 * game_get_speed(gamespeed_fps); // instance_destroy()
    }

    default_rotate_shepard_alarm_2();
}
