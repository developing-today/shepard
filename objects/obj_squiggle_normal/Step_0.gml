
// Define your minimum speed threshold
var min_speed = 5; // Adjust this to your desired minimum speed
var max_speed = 0;
var _force_angle;
var target_instance = noone;
var search_radius = 250; // Radius within which to search for moving

// Loop through all instances to find the fastest one within the specified
with (obj_mob) {
    var _distance_to_object = point_distance(x, y, other.x, other.y);
    if (_distance_to_object <= search_radius && id != other.id) {
        // Calculate the speed of the current instance
        if (phy_speed > max_speed) {
            // If current instance is faster, update max_speed and set
            max_speed = phy_speed
            _force_angle = point_direction(other.x, other.y, x, y);
            target_instance = id;
        }
    }
}

if (target_instance != noone && max_speed > min_speed) {
}
else {
    _force_angle = choose(0, 90, 180, 270); // Choose a random cardinal
}
var _force_magnitude = 9; // Adjust the force magnitude as needed.
var _force_x = lengthdir_x(_force_magnitude, _force_angle);
var _force_y = lengthdir_y(_force_magnitude, _force_angle);
physics_apply_force(x, y, _force_x, _force_y);
