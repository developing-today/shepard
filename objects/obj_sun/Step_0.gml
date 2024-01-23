//gc_collect()

    // In the Step event of the object
    var force_x = 0; // No horizontal force
    var force_y = -0.4; // Downward force magnitude, adjust as needed

    // Apply the force at the object's center of mass
    physics_apply_force(x, y, force_x, force_y);
