function create_shepard(){
	if visible {
		deaths_total += 1
		puddle_follow = false
		fuel_follow = false
		portal_follow = false
	}
	view_visible[3] = true

	instance_create_depth(362, 189, depth, object_index, {
		deaths_total: deaths_total,
		ships_total: ships_total,
		
		swipe_total: swipe_total,
		swipe_total_contact_mob: swipe_total_contact_mob,
		swipe_total_contact_squiggle_micro: swipe_total_contact_squiggle_micro,
		swipe_total_contact_squiggle_tiny: swipe_total_contact_squiggle_tiny,
		swipe_total_contact_squiggle_normal: swipe_total_contact_squiggle_normal,
		
		drive_total: drive_total,
		drive_total_contact_mob: drive_total_contact_mob,
		drive_total_contact_squiggle_micro: drive_total_contact_squiggle_micro,
		drive_total_contact_squiggle_tiny: drive_total_contact_squiggle_tiny,
		drive_total_contact_squiggle_normal: drive_total_contact_squiggle_normal,
		
		bash_total: bash_total,
		bash_total_contact_mob: bash_total_contact_mob,
		bash_total_contact_squiggle_micro: bash_total_contact_squiggle_micro,
		bash_total_contact_squiggle_tiny: bash_total_contact_squiggle_tiny,
		bash_total_contact_squiggle_normal: bash_total_contact_squiggle_normal,
		
		cast_total: cast_total,
		cast_total_contact_mob: cast_total_contact_mob,
		cast_total_contact_squiggle_micro: cast_total_contact_squiggle_micro,
		cast_total_contact_squiggle_tiny: cast_total_contact_squiggle_tiny,
		cast_total_contact_squiggle_normal: cast_total_contact_squiggle_normal,
		
		spark_total: spark_total,
		spark_total_contact_mob: spark_total_contact_mob,
		spark_total_contact_squiggle_micro: spark_total_contact_squiggle_micro,
		spark_total_contact_squiggle_tiny: spark_total_contact_squiggle_tiny,
		spark_total_contact_squiggle_normal: spark_total_contact_squiggle_normal,
		
		mob_total: mob_total,
		mob_total_killed: mob_total_killed,
		mob_total_penned: mob_total_penned,
		mob_total_donated: mob_total_donated,
		mob_total_contact_shepard: mob_total_contact_shepard,
		mob_total_contact_mob: mob_total_contact_mob,
		mob_total_contact_squiggle_micro: mob_total_contact_squiggle_micro,
		mob_total_contact_squiggle_tiny: mob_total_contact_squiggle_tiny,
		mob_total_contact_squiggle_normal: mob_total_contact_squiggle_normal,

		squiggle_micro_total: squiggle_micro_total,
		squiggle_micro_total_cycled: squiggle_micro_total_cycled,
		squiggle_micro_total_killed: squiggle_micro_total_killed,
		squiggle_micro_total_killed: squiggle_micro_total_killed,
		squiggle_micro_total_penned: squiggle_micro_total_penned,
		squiggle_micro_total_donated: squiggle_micro_total_donated,
		squiggle_micro_total_contact_shepard: squiggle_micro_total_contact_shepard,
		squiggle_micro_total_contact_mob: squiggle_micro_total_contact_mob,
		squiggle_micro_total_contact_squiggle_micro: squiggle_micro_total_contact_squiggle_micro,
		squiggle_micro_total_contact_squiggle_tiny: squiggle_micro_total_contact_squiggle_tiny,
		squiggle_micro_total_contact_squiggle_normal: squiggle_micro_total_contact_squiggle_normal,
		
		squiggle_tiny_total: squiggle_tiny_total,
		squiggle_tiny_total_cycled: squiggle_tiny_total_cycled,
		squiggle_tiny_total_killed: squiggle_tiny_total_killed,
		squiggle_tiny_total_killed: squiggle_tiny_total_killed,
		squiggle_tiny_total_penned: squiggle_tiny_total_penned,
		squiggle_tiny_total_donated: squiggle_tiny_total_donated,
		squiggle_tiny_total_contact: squiggle_tiny_total_contact,
		squiggle_tiny_total_contact_shepard: squiggle_tiny_total_contact_shepard,
		squiggle_tiny_total_contact_mob: squiggle_tiny_total_contact_mob,
		squiggle_tiny_total_contact_squiggle_micro: squiggle_tiny_total_contact_squiggle_micro,
		squiggle_tiny_total_contact_squiggle_tiny: squiggle_tiny_total_contact_squiggle_tiny,
		squiggle_tiny_total_contact_squiggle_normal: squiggle_tiny_total_contact_squiggle_normal,
		
		squiggle_normal_total: squiggle_normal_total,
		squiggle_normal_total_cycled: squiggle_normal_total_cycled,
		squiggle_normal_total_killed: squiggle_normal_total_killed,
		squiggle_normal_total_killed: squiggle_normal_total_killed,
		squiggle_normal_total_penned: squiggle_normal_total_penned,
		squiggle_normal_total_donated: squiggle_normal_total_donated,
		squiggle_normal_total_contact: squiggle_normal_total_contact,
		squiggle_normal_total_contact_shepard: squiggle_normal_total_contact_shepard,
		squiggle_normal_total_contact_mob: squiggle_normal_total_contact_mob,
		squiggle_normal_total_contact_squiggle_micro: squiggle_normal_total_contact_squiggle_micro,
		squiggle_normal_total_contact_squiggle_tiny: squiggle_normal_total_contact_squiggle_tiny,
		squiggle_normal_total_contact_squiggle_normal: squiggle_normal_total_contact_squiggle_normal,
		
		puddle_total: puddle_total,
		puddle_total_consumed: puddle_total_consumed,
		puddle_total_supplied: puddle_total_supplied,
		
		fuel_total: fuel_total,
		fuel_total_consumed: fuel_total_consumed,
		fuel_total_supplied: fuel_total_supplied,
		
		explosions_total: explosions_total,
		super_explosions_total: super_explosions_total,
		resets_total: resets_total,
	})
	with (obj_shepard_spawn_text) {
		instance_destroy()	
	}
	instance_destroy()
}

function kill_shepard(){
	visible = false
	deaths_total += 1
	puddle_follow = false
	var _x = x
	var _y = y

    var _i, _inst, _dist, _attempt, _max_attempts = 128;

    for (_i = 0; _i < 2; _i++)
    {
        _attempt = 0;
        do
        {
            _x = random_range(x - radius, x + radius);
            _y = random_range(y - radius, y + radius);
            _dist = point_distance(x, y, _x, _y);
            _inst = instance_position(_x,_y,obj_spark);
            _attempt += 1;
        }
        until ((_inst != noone && _dist <= radius) || _attempt > _max_attempts);

        if (_attempt < _max_attempts) {
            instance_create_depth(_x, _y, depth, obj_spark);
		}
    }

    var _retry = instance_create_depth(_x,_y, depth, obj_shepard_spawn_text)
	_retry = instance_create_depth(1050, 120, depth, obj_shepard_spawn_text)
	with(_retry){
	image_xscale *= 2
	image_yscale *= 2
	}
	_retry = instance_create_depth(440, 220, depth, obj_shepard_spawn_text)
	with(_retry){
	image_xscale *= 2
	image_yscale *= 2
	}
	_retry = instance_create_depth(670, 220, depth, obj_shepard_spawn_text)
	with(_retry){
	image_xscale *= 2
	image_yscale *= 2
	}
	_retry = instance_create_depth(670, 560, depth, obj_shepard_spawn_text)
	with(_retry){
	image_xscale *= 2
	image_yscale *= 2
	}
}

function gather_movement() {
	var _up = keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(ord("K"));
	var _down = keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(ord("J"));
	var _left = keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("H"));
	var _right = keyboard_check(vk_right) || keyboard_check(ord("D")) || keyboard_check(ord("L"));

	if (_left) {
	  if steps_left < 0 {
		  steps_left = 1
	  } else {
		  steps_left += 1
	  }
	} else {
		steps_left = 0
	}

	if (_right) {
	  if steps_right < 0 {
	      steps_right = 1
	  } else {
	      steps_right += 1
	  }
	} else {
		steps_right = 0
	}

	if (_up) {
	  if steps_up < 0 {
	      steps_up = 1
	  } else {
	      steps_up += 1
	  }
	} else {
		steps_up = 0
	}

	if (_down) {
	  if steps_down < 0 {
	      steps_down = 1
	  } else {
	      steps_down += 1
	  }
	} else {
		steps_down = 0
	}

	move_x =_right - _left
	move_y = _down - _up
	var _last_x = last_x
	if (move_x != 0) {
		last_x = move_x
    
	    if (move_x > 0) {
	        if steps_x < 0 {
				swipe_staff()
	            steps_x = 1
	        } else {
				if steps_x_persist == 0 {
					if image_speed == 0 {
						swipe_staff()
					}
				}
	            steps_x += 1
	        }
	    } else {
	        if steps_x > 0 {
				if image_speed == 0 {
					swipe_staff()
				}
				steps_x = -1
	        } else {
	            steps_x -= 1
	        }
	    }
	    if steps_x_idle != 0 {
	        steps_x_idle = 0
	    }
	} else {
	    steps_x_idle += 1
	}

	var _last_y = last_y
	if (move_y != 0) {
		last_y = move_y
	
	    if (move_y > 0) {
	        if steps_y < 0 {
	            steps_y = 1
	        } else {
	            steps_y += 1
	        }
	    } else {
	        if steps_y > 0 {
	            steps_y = -1
	        } else {
	            steps_y -= 1
	        }
	    }
	    if steps_y_idle != 0 {
	        steps_y_idle = 0
	    }
	} else {
	    steps_y_idle += 1
	}

	if (move_x != 0) {
	    if (move_x == _last_x) {
	        if (move_x > 0) {
				if steps_x_persist < 0 {
					steps_x_persist = 1;
				} else {
					steps_x_persist += 1;
				}
	        } else {
				if steps_x_persist > 0 {
					steps_x_persist = -1
				} else {
					steps_x_persist -= 1;
				}
	        }
	    }
	} else if steps_x_persist != 0 {
	        if (steps_x_persist > 0) {
	            steps_x_persist += 1;
	        } else {
	            steps_x_persist -= 1;
	        }	
	}

	if (move_y != 0) {
	    if (move_y == _last_y) {
	        if (move_y > 0) {
				if steps_y_persist < 0 {
	             steps_y_persist = 1;
				} else {
					steps_y_persist += 1;
				}
	        } else {
				if steps_y_persist > 0 {
					steps_y_persist = -1
				} else {
					steps_y_persist -= 1;
				}
	        }
	    }
	} else if steps_y_persist != 0 {
	        if (steps_y_persist > 0) {
	            steps_y_persist += 1;
	        } else {
	            steps_y_persist -= 1;
	        }	
	}
}

function apply_movement() {
	if image_speed == 0 {
		phy_rotation = 0
	}
	var _move_speed_force = move_speed * force_multiplier;
	physics_apply_force(x, y, move_x * _move_speed_force, move_y * _move_speed_force);
	if image_speed != 0 {
		if (keyboard_check_pressed(vk_control) || keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_space) || keyboard_check(ord("Q")) || keyboard_check(vk_enter) || keyboard_check(ord("E")) || keyboard_check(ord("F")))
		{
			swipe_staff()
		}
	}
}

function handle_collision() {
	handle_solid_collision();
	handle_mob_collision();
}

function handle_mob_collision() {
	var _precise = true;
	var _notme = true;
	var _colliding_instance = collision_circle(x, y, radius*1, obj_mob, _precise, _notme);
	if (_colliding_instance != noone) {
	    kill_shepard();
	}
}

function handle_solid_collision() {
	var _collision_instance_solid = instance_place(x + (move_x * move_speed), y, obj_solid);
	if (_collision_instance_solid == noone) {
	    var _collision_instance = instance_place(x + (move_x * move_speed), y, obj_solid);
	    if (_collision_instance == noone || _collision_instance.ignore_collision) {
	        // Adjust position or handle collision
	     	// todo?
	    }
	}

	_collision_instance_solid = instance_place(x, y + (move_y * move_speed), obj_solid)
	if (_collision_instance_solid == noone) {
	    var _collision_instance = instance_place(x, y + (move_y * move_speed), obj_solid)
	    if (_collision_instance == noone || _collision_instance.ignore_collision) {
	        // Adjust position or handle collision
			// todo?
	    }
	}
}

function step_shepard() {
	if visible == false {
	    return;
	}
	if fuel_total_consumed > 0 {
		image_speed = 1
	}
	gather_movement();

	if (_this_lerp_time > 0) {
		return
	}

	apply_movement();
	handle_collision();
}

function rotate_shepard_alarm_2() {
	if (_this_lerp_time = 0) {
		if(steps_x_persist > 0) {
			image_index = 2;
		} else {
			image_index = 1;
		}
		return
	}
	if(steps_x_persist > 0) {
	    apply_lerp_rotation_alarm_2();
	    apply_lerp_rotation_force_subtract();
	} else {
	    apply_lerp_rotation_alarm_2();
	    apply_lerp_rotation_force_add();
	}
	if (_this_lerp_time > (0.1 * game_get_speed(gamespeed_fps))) {
		return
	}
	if(steps_x_persist > 0) {
		image_index = 2;
	} else {
		image_index = 1;
	}
}

function default_rotate_shepard_alarm_2() {
    var _this_target_angle = 359;
    var _this_start_angle = phy_rotation;
	var _this_force_dir = _this_start_angle;
	var _this_force_power = 90;
    var _this_lerp_time_initial = 1 * game_get_speed(gamespeed_fps);
    var _this_lerp_time = _this_lerp_time_initial;
	if (steps_x_persist > 0) {
		steps_x_persist = -1
	} else {
		steps_x_persist = 1
	}
	rotate_shepard_alarm_2()
}

function follow_shepard() {
	var _angle_to_target = point_direction(x, y, obj_shepard.phy_position_x, obj_shepard.phy_position_y);
	var _dir_x = lengthdir_x(1, _angle_to_target);
	var _dir_y = lengthdir_y(1, _angle_to_target);
	var _impulse_x = _dir_x * impulse_strength;
	var _impulse_y = _dir_y * impulse_strength;
	physics_apply_impulse(x, y, _impulse_x, _impulse_y);	
}
