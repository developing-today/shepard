function handle_puddle_shepard_staff_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius, obj_shepard_staff, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
    obj_shepard.puddle_follow = true
}

function handle_puddle_shepard_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius, obj_shepard, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	obj_shepard.puddle_total_consumed += 1
	
	fade_puddle_for_consume()
}

function follow_puddle() {
	var _angle_to_target = point_direction(x, y, obj_puddle.phy_position_x, obj_puddle.phy_position_y);
	var _dir_x = lengthdir_x(1, _angle_to_target);
	var _dir_y = lengthdir_y(1, _angle_to_target);
	var _impulse_x = _dir_x * impulse_strength;
	var _impulse_y = _dir_y * impulse_strength;
	physics_apply_impulse(x, y, _impulse_x, _impulse_y);
}

function fade_puddle_for_consume() {
	fade_rate = consume_fade_rate
    alarm[0] = 1;
}
