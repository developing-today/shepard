if obj_shepard.puddle_follow {
	follow_shepard()
} else {
    handle_puddle_shepard_interaction()
	handle_puddle_shepard_staff_interaction()
	var _angle_to_target = point_direction(x, y, orig_x, orig_y);
	var _dir_x = lengthdir_x(1, _angle_to_target);
	var _dir_y = lengthdir_y(1, _angle_to_target);
	var _impulse_x = _dir_x * impulse_strength;
	var _impulse_y = _dir_y * impulse_strength;
	physics_apply_impulse(x, y, _impulse_x, _impulse_y);	
}
