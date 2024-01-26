//gc_collect()

    // In the Step event of the object
    var _force_x = 0; // No horizontal force
    var _force_y = 0.4; // Downward force magnitude, adjust as needed

    // Apply the force at the object's center of mass
    physics_apply_force(x, y, _force_x, _force_y);
counter += 1;

if instance_number(obj_squiggle_base) == 0 {
	if sprite_index != spr_white_hole {
		sprite_index = spr_white_hole;
		instance_create_depth(485, 32, depth, obj_vip_text_results)
		instance_create_depth(885, 64, depth, obj_vip_results)
	}
}
