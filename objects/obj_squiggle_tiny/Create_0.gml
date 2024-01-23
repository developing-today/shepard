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
        if (segment.object_index == obj_squiggle_base) {
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