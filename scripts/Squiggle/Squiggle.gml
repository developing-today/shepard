function handle_squiggle_shepard_staff_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_shepard_staff, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
    contact_staff += 1
	
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || _colliding_instance.phy_angular_velocity > 180  {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_shepard_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_shepard, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_shepard += 1
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || _colliding_instance.phy_angular_velocity > 180  {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_mob_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_mob, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_mob += 1
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || _colliding_instance.phy_angular_velocity > 180  {
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
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || _colliding_instance.phy_angular_velocity > 180  {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_spark_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_sun, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_spark += 1
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || _colliding_instance.phy_angular_velocity > 180  {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_puddle_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_sun, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	contact_puddle += 1
	if _colliding_instance.phy_linear_velocity_x > 64 || _colliding_instance.phy_linear_velocity_y > 64 || _colliding_instance.phy_angular_velocity > 180  {
		phy_linear_velocity_x = _colliding_instance.phy_linear_velocity_x
		phy_linear_velocity_y = _colliding_instance.phy_linear_velocity_y
		
		contact_at_speed += 1
	}
}

function handle_squiggle_interaction() {
	handle_squiggle_sun_interaction()
	handle_squiggle_mob_interaction()
	handle_squiggle_shepard_staff_interaction()
	handle_squiggle_spark_interaction()
	handle_squiggle_puddle_interaction()
	handle_squiggle_shepard_interaction()
	if contact_shepard > 0 || contact_staff > 0 {
		follow_shepard()	
	}
}

function fade_squiggle() {
	fade_rate = default_fade_rate
    alarm[0] = 1;
}
function handle_squiggle_normal_interaction() {
	handle_squiggle_interaction()
// - staff 1 grow, 2 split into 2 tiny
// - water split into 2 tiny
// - shepard follow
// - spark/velocity gain impulse
// - sun/mob spawn 2 micro
	var _force_angle = choose(0, 90, 180, 270); // Choose a random cardinal
	var _force_x = lengthdir_x(impulse_strength, _force_angle);
	var _force_y = lengthdir_y(impulse_strength, _force_angle);
	physics_apply_force(x, y, _force_x, _force_y);
}

function handle_squiggle_tiny_interaction() {
	handle_squiggle_interaction()
// - staff 2 split into 2 micro
// - spark/mob grow
// - shepard follow
	var _force_angle = choose(0, 90, 180, 270); // Choose a random cardinal
	var _force_x = lengthdir_x(impulse_strength, _force_angle);
	var _force_y = lengthdir_y(impulse_strength, _force_angle);
	physics_apply_force(x, y, _force_x, _force_y);
}

function handle_squiggle_micro_interaction() {
	handle_squiggle_interaction()
// - staff destroy
// - spark/velocity/shepard grow

	var _force_angle = choose(0, 90, 180, 270); // Choose a random cardinal
	var _force_x = lengthdir_x(impulse_strength, _force_angle);
	var _force_y = lengthdir_y(impulse_strength, _force_angle);
	physics_apply_force(x, y, _force_x, _force_y);
}

function squiggle_micro_create_tiny_alarm_0() {
	fade_rate -= 1;
	if fade_rate == 0 {
		instance_destroy()
		instance_create_depth(x, y, depth, obj_squiggle_tiny)
		instance_create_depth(x+32, y-128, depth, obj_squiggle_tiny)
	}
}


function create_squiggle_tiny_event() {
// In the Create event of obj_squiggle_tiny
    var prev_segment = id; // Initial segment (e.g., the head of the
    var segment_distance = 0; // Desired distance between each segment.
    var no_of_segments = 2; // Number of segments you want to create.
    var radius = 8; // Radius for the circular fixture (if you want a circle).
    var segment; // Variable to store the new segment instance.

    for (var i = 1; i <= no_of_segments; i++) {
        segment = instance_create_layer(x + i * segment_distance, y,
  "Instances", obj_squiggle_base);
  segment.sprite_index = spr_squiggle_tiny

        // Check if we're using a Physics Object, then create the fixture.
        if (segment.object_index == obj_squiggle_active) {
            var fixture_id = physics_fixture_create();
            // Define the shape of the fixture.
            physics_fixture_set_circle_shape(fixture_id, radius); // This line

            // Now setup fixture properties.
            physics_fixture_set_density(fixture_id, 0.5);
            physics_fixture_set_restitution(fixture_id, 0.3);
            physics_fixture_set_friction(fixture_id, 0.1);

            // Finally, bind the fixture to the instance.
            physics_fixture_bind(fixture_id, segment);
            physics_fixture_delete(fixture_id);

            physics_joint_distance_create(prev_segment, segment, prev_segment.x, prev_segment.y, segment.x, segment.y, false);

            prev_segment = segment; // The current segment will be the
        } else {
            // If this error shows, then obj_squiggle_base is likely not set
            show_debug_message("Error: obj_squiggle_base is not a Physics Object.");
        }
    }
}