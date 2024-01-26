function handle_squiggle_shepard_staff_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*2, obj_shepard_staff, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_staff += 1
	contacter = _colliding_instance
	contact_duration_remaining = -1
	contact_backoff_remaining = -1
	
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || abs(_colliding_instance.phy_angular_velocity) > 90   {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_shepard_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*2, obj_shepard, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_shepard += 1
	contacter = _colliding_instance
	contact_duration_remaining = -1
	contact_backoff_remaining = -1
	
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || abs(_colliding_instance.phy_angular_velocity) > 90  {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_mob_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*2, obj_mob_base, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_mob += 1
	if (contact_shepard > 0) {
		contact_shepard /= 2
		contact_shepard -= 1
	}
	contact_duration_remaining = gamespeed() * 5
	contact_backoff_remaining = gamespeed() * 3
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || abs(_colliding_instance.phy_angular_velocity) > 90   {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_sun_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_sun, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_sun += 1
	//impulse_strength += 1
	contact_shepard = 0
	
	//contacter = _colliding_instance
	contact_duration_remaining = gamespeed() * 3
	contact_backoff_remaining = gamespeed() * 8
	
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || abs(_colliding_instance.phy_angular_velocity) > 90   {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}

    var _angle_to_sun = point_direction(x, y, obj_sun.x, obj_sun.y);
    var _force_x_to_sun = lengthdir_x(impulse_strength*8,_angle_to_sun);
    var _force_y_to_sun = lengthdir_y(impulse_strength*8,_angle_to_sun);

    physics_apply_impulse(x, y, -_force_x_to_sun, -_force_y_to_sun);
}


function handle_squiggle_spark_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_spark, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_spark += 1
	
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || abs(_colliding_instance.phy_angular_velocity) > 90   {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_puddle_interaction() {
	var _precise = true;  // Whether tro use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*3, obj_puddle, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
		
	//contacter = _colliding_instance	
	contact_puddle += 1
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || abs(_colliding_instance.phy_angular_velocity) > 90   {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_interaction() {
	if (contact_duration_remaining > 0) {
		contact_duration_remaining -= 1
		if contact_duration_remaining <= 0 {
			contacter = 0
		}
	}	
	if (contact_backoff_remaining > 0) {
		contact_backoff_remaining -= 1
		return
	}
	handle_squiggle_sun_interaction()
	handle_squiggle_mob_interaction()
	handle_squiggle_shepard_staff_interaction()
	handle_squiggle_spark_interaction()
	handle_squiggle_puddle_interaction()
	handle_squiggle_shepard_interaction()
	
	if contacter > 0 {
		follow_contacter()
	}
	//if contact_shepard > 0 || contact_staff > 0 {
	// 	follow_shepard()
	//}
}

function handle_squiggle_normal_interaction() {
	handle_squiggle_interaction()
 	if destroy_fade_rate <= 0 {
		if (contact_staff == 1) {
			//destroy_squiggle()
		}
		if (contact_staff > (1 * gamespeed())) {}
		if (contact_puddle > 0) {
			destroy_squiggle()
		}
		if (contact_mob > 0) {
			destroy_squiggle()
		}		
		if (contact_shepard == 1) {
			fade_squiggle()
		}
		if (contact_shepard > (1 * gamespeed())) {}
		if (contact_at_speed > 0) {
			//impulse_strength += contact_at_speed
			contact_at_speed = 0
		}
		if (contact_sun) {
			destroy_squiggle()
		}
		if (contact_spark > 0) {
			fade_squiggle()
		}
	}
	normal_squiggle_movements()
}

function handle_squiggle_base_interaction() {	
	handle_squiggle_interaction();
	if destroy_fade_rate <= 0 {
		if (contact_staff > 0) {
			destroy_squiggle()
		}
		if (contact_staff > (1 * gamespeed())) {}
		if (contact_puddle > 0) {
			destroy_squiggle()
		}
		if (contact_mob > 0) {
			destroy_squiggle()
		}
		if (contact_shepard > 0) {
			destroy_squiggle()
		}
		if (contact_shepard > (1 * gamespeed())) {}
		if (contact_at_speed > 0) {
			//impulse_strength += contact_at_speed
			contact_at_speed = 0
		}
		if (contact_sun) {
			destroy_squiggle()
		}
		if (contact_spark > 0) {
			fade_squiggle()
		}
	}
	normal_squiggle_movements()
}

function handle_squiggle_tiny_interaction() {
	handle_squiggle_interaction();
	if destroy_fade_rate <= 0 {
		if (contact_staff > 0) {
			destroy_squiggle()
		}
		if (contact_staff > (1 * gamespeed())) {}
		if (contact_puddle > 0) {
			destroy_squiggle()
		}
		if (contact_mob > 0) {
			destroy_squiggle()
		}
		if (contact_shepard > 0) {
			destroy_squiggle()
		}
		if (contact_shepard > (1 * gamespeed())) {}
		if (contact_at_speed > 0) {
			//impulse_strength += contact_at_speed
			contact_at_speed = 0
		}
		if (contact_sun) {
			fade_squiggle()
		}
		if (contact_spark > 0) {
			fade_squiggle()
		}
	}
	normal_squiggle_movements()
}

function handle_squiggle_micro_interaction() {
	handle_squiggle_interaction()
	if destroy_fade_rate <= 0 {
		if (contact_staff > 0) {
			destroy_squiggle()
		}
		if (contact_staff > (1 * gamespeed())) {}
		if (contact_puddle > 0) {
			destroy_squiggle()
		}
		if (contact_mob > 0) {
			destroy_squiggle()
		}
		if (contact_shepard > 0) {
			destroy_squiggle()
		}
		if (contact_shepard > (1 * gamespeed())) {}
		if (contact_at_speed > 0) {
			//impulse_strength += contact_at_speed
			contact_at_speed = 0
		}
		if (contact_sun) {
 			destroy_squiggle()
		}
		if (contact_spark > 0) {
			fade_squiggle()
		}
	}
	normal_squiggle_movements()
}

function normal_squiggle_movements() {
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
	    // Calculate the centroid (triangle center) coordinates
	    // Calculate the angle and force to apply towards the centroid
	    var _angle_to_center = point_direction(x, y, ((room_width/2 + x + obj_sun.x + random_range(-128, 128)) / 3), ((room_height/2 + y + obj_sun.y + random_range(-128, 128)) / 3));
	    var _force_x_to_center = lengthdir_x(impulse_strength, _angle_to_center);
	    var _force_y_to_center = lengthdir_y(impulse_strength, _angle_to_center);

	    // Apply the impulse towards the centroid
	    physics_apply_impulse(x, y, _force_x_to_center, _force_y_to_center);

    } else {
        var _force_angle = choose(0, 45, 90, 135, 180, 225, 270); // Choose a random
        var _force_x = lengthdir_x(impulse_strength, _force_angle);
        var _force_y = lengthdir_y(impulse_strength, _force_angle);

        physics_apply_force(x, y, _force_x, _force_y);
		
		var _second_force_angle_variation = random_range(-15, 15);
		last_major_angle = last_major_angle + _second_force_angle_variation;
		var _second_force_x = lengthdir_x(impulse_strength, last_major_angle);
        var _second_force_y = lengthdir_y(impulse_strength, last_major_angle);
        physics_apply_force(x, y, _second_force_x, _second_force_y);
    }
}
function fade_squiggle() {
	if fade_rate != 0 && default_fade_rate >= fade_rate {
		return
	}
	if fade_rate <= 0  || default_fade_rate < fade_rate {
		if object_index == obj_squiggle_micro {
			fade_rate = default_fade_rate * 2
		}
		fade_rate = default_fade_rate
	}
	
    alarm[0] = 1;
}

function squiggle_normal_create_normal_alarm_0() {
	fade_rate -= 1;
	if fade_rate <= 0 {
		contact_shepard = 0;
		contact_staff = 0;
		//create_squiggle_micro(1)
	    // Apply the impulse away the centroid
	    var _angle_to_center = point_direction(x, y, ((room_width/2 + x + obj_shepard.x + random_range(-128, 128)) / 3), ((room_height/2 + y + obj_sun.y + random_range(-128, 128)) / 3));
	    var _force_x_to_center = lengthdir_x(impulse_strength*8, _angle_to_center);
	    var _force_y_to_center = lengthdir_y(impulse_strength*8, _angle_to_center);
	} else {
        //image_alpha = fade_rate / default_fade_rate;
		alarm[0] = 1
    }
}

function squiggle_tiny_create_normal_alarm_0() {
	fade_rate -= 1;
	if fade_rate <= 0 {
		instance_destroy()
		create_squiggle_normal(1)
	} else {
        image_alpha = fade_rate / default_fade_rate;
		alarm[0] = 1
    }
}

function squiggle_micro_create_tiny_alarm_0() {
	fade_rate -= 1;
	if fade_rate <= 0 {
		instance_destroy()
		create_squiggle_tiny(1)
	} else {
        image_alpha = fade_rate / default_fade_rate;
		alarm[0] = 1
    }
}

function destroy_squiggle_alarm_1() {
	destroy_fade_rate -= 1;
	if destroy_fade_rate <= 0 {
		instance_destroy()
		create_squiggle_downward(1)
	} else {
        image_alpha = destroy_fade_rate / default_destroy_fade_rate;
		alarm[1] = 1
    }
}

function destroy_squiggle() {
	if destroy_fade_rate != 0 && default_destroy_fade_rate >= destroy_fade_rate {
		return
	}
	if destroy_fade_rate <= 0 || default_destroy_fade_rate < destroy_fade_rate {
		destroy_fade_rate = default_destroy_fade_rate
	}
    alarm[1] = 1;
}

function create_squiggle_base_event() {
	default_fade_rate = gamespeed() * 3;
	fade_rate = 0;
	default_destroy_fade_rate = gamespeed() * 1;
	destroy_fade_rate = 0;
	last_major_angle = choose(0, 45, 90, 135, 180, 225, 270)
}

function create_squiggle_tiny_event() {
	fade_squiggle()
    //var _prev_segment= id; // Initial segment (e.g., the head of the
    //var _segment_distance = 0; // Desired distance between each segment.
    //var _no_of_segments = 2; // Number of segments you want to create.
    //var _radius = 8; // Radius for the circular fixture (if you want a circle).
    //var _segment; // Variable to store the new segment instance.
    //var _id = id;
	
    //for (var _i = 1; _i <= _no_of_segments; _i++) {
    //    _segment = instance_create_layer(x + _i * _segment_distance, y, "Instances", obj_squiggle_base);
    //    _segment.sprite_index = spr_squiggle_tiny
	//	_segment.parent = _id;

    //    // Check if we're using a Physics Object, then create the fixture.
    //    if (_segment.object_index == obj_squiggle_base) {
    //        var _fixture_id = physics_fixture_create();
    //        // Define the shape of the fixture.
    //        physics_fixture_set_circle_shape(_fixture_id, _radius); // This line

    //        // Now setup fixture properties.
    //        physics_fixture_set_density(_fixture_id, 0.5);
    //        physics_fixture_set_restitution(_fixture_id, 0.3);
    //        physics_fixture_set_friction(_fixture_id, 0.1);

    //        // Finally, bind the fixture to the instance.
    //        physics_fixture_bind(_fixture_id, _segment);
    //        physics_fixture_delete(_fixture_id);

    //        _ = physics_joint_distance_create(_prev_segment, _segment, _prev_segment.x, _prev_segment.y, _segment.x, _segment.y, false);

    //        _prev_segment= _segment; // The current segment will be the
    //    } else {
    //        // If this error shows, then obj_squiggle_base is likely not set
    //        show_debug_message("Error: obj_squiggle_base is not a Physics Object.");
    //    }
    //}
}

function follow_contacter() {
	if instance_exists(contacter) {
		var _angle_to_target = point_direction(x, y, contacter.phy_position_x, contacter.phy_position_y);
		var _dir_x = lengthdir_x(1, _angle_to_target);
		var _dir_y = lengthdir_y(1, _angle_to_target);
		var _impulse_x = _dir_x * impulse_strength;
		var _impulse_y = _dir_y * impulse_strength;
		physics_apply_impulse(x, y, _impulse_x, _impulse_y);	
		return
	}
	if contact_shepard > 0 || contact_staff > 0 {
		if (contact_staff > 0 && contact_shepard == 0) {
			create_squiggle_micro(1)
			contact_staff = 0
			contact_shepard = 1
		}
		follow_shepard();
	}
}
function create_squiggle_normal(_number_of_squiggles) {
	var _radius = radius * 12

    var _i, _x, _y, _inst, _dist, _attempt, _max_attempts = 128;

    for (_i = 0; _i < _number_of_squiggles; _i++)
    {
        _attempt = 0;
        do
        {
            _x = random_range(x - _radius, x + _radius);
            _y = random_range(y - _radius, y + _radius);
            _dist = point_distance(x, y, _x, _y);
            _inst = instance_position(_x, _y, obj_base);
            _attempt += 1;
        }
        until ((_inst == noone && _dist <= _radius) || _attempt >
  _max_attempts);

        if (_inst == noone && _dist <= _radius) {
            instance_create_depth(_x, _y, depth, obj_squiggle_normal);
        }
    }	
}

function create_squiggle_micro(_number_of_squiggles) {
	var _radius = radius * 4

    var _i, _x, _y, _inst, _dist, _attempt, _max_attempts = 128;

    for (_i = 0; _i < _number_of_squiggles; _i++)
    {
        _attempt = 0;
        do
        {
            _x = random_range(x - _radius, x + _radius);
            _y = random_range(y - _radius, y + _radius);
            _dist = point_distance(x, y, _x, _y);
            _inst = instance_position(_x, _y, obj_base);
            _attempt += 1;
        }
        until ((_inst == noone && _dist <= _radius) || _attempt >
  _max_attempts);

        if (_inst == noone && _dist <= _radius) {
            instance_create_depth(_x, _y, depth, obj_squiggle_micro);
        }
    }	
}


function create_squiggle_tiny(_number_of_squiggles) {
	var _radius = radius * 8

    var _i, _x, _y, _inst, _dist, _attempt, _max_attempts = 128;

    for (_i = 0; _i < _number_of_squiggles; _i++)
    {
        _attempt = 0;
        do
        {
            _x = random_range(x - _radius, x + _radius);
            _y = random_range(y - _radius, y + _radius);
            _dist = point_distance(x, y, _x, _y);
            _inst = instance_position(_x, _y, obj_base);
            _attempt += 1;
        }
        until ((_inst == noone && _dist <= _radius) || _attempt >
  _max_attempts);

        if (_inst == noone && _dist <= _radius) {
            instance_create_depth(_x, _y, depth, obj_squiggle_tiny);
        }
    }	
}

function create_squiggle_downward(_number_of_squiggles) {
	if object_index == obj_squiggle_micro {
		return
	}
		
	var _radius = radius * 4

    var _i, _x, _y, _inst, _dist, _attempt, _max_attempts = 128;

    for (_i = 0; _i < _number_of_squiggles; _i++)
    {
        _attempt = 0;
        do
        {
            _x = random_range(x - _radius, x + _radius);
            _y = random_range(y - _radius, y + _radius);
            _dist = point_distance(x, y, _x, _y);
            _inst = instance_position(_x, _y, obj_base);
            _attempt += 1;
        }
        until ((_inst == noone && _dist <= _radius) || _attempt >
  _max_attempts);

        if (_inst == noone && _dist <= _radius) {
			var _type = object_index
			if _type != obj_squiggle_tiny && _type != obj_squiggle_normal && _type != obj_squiggle_micro {
				_type = obj_squiggle_tiny;
			}
			if _type == obj_squiggle_micro {
				return
			}
			if _type == obj_squiggle_tiny {
				_type = obj_squiggle_micro
			}
			if _type == obj_squiggle_normal {
				_type = obj_squiggle_base
			}
            instance_create_depth(_x, _y, depth, object_index);
        }
    }	
}
