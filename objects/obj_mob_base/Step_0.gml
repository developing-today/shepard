// Initialize variables
var _max_velocity = 2; // don't follow slower than
var _fastest_object_id = noone;
var _sight_range = 300; // Adjust as needed

with (obj_kinetic_solid) {
    var _target_x = other.x;
    var _target_y = other.y;

    // Placeholder for custom line of sight logic
    var _has_line_of_sight = true; 

    if (_has_line_of_sight && point_distance(_target_x, _target_y, x, y) <= _sight_range) {
        var _target_vel_x = other.phy_speed_x;
        var _target_vel_y = other.phy_speed_y;
        var _target_velocity = point_distance(0, 0, _target_vel_x, _target_vel_y);
        
        if (_target_velocity > _max_velocity) {
            _max_velocity = _target_velocity;
            _fastest_object_id = other.id;
        }
    }
}

// Following logic in the Step event
var _change_dir_timer = irandom_range(30, 300); // Timer for direction change
var _dir_x = 0;
var _dir_y = 0;

if (_fastest_object_id != noone && _change_dir_timer <= 0) {
    var _target = instance_find(1*_fastest_object_id, 0);
    if (_target != undefined) {
        var _angle_to_target = point_direction(x, y, _target.x, _target.y);
        _dir_x = cos(degtorad(_angle_to_target));
        _dir_y = sin(degtorad(_angle_to_target));
    }
} else {
    var _random_angle = random(360);
    _dir_x = cos(degtorad(_random_angle));
    _dir_y = sin(degtorad(_random_angle));
}

_change_dir_timer -= 1;
if (_change_dir_timer <= 0) {
    _change_dir_timer = irandom_range(30, 300); // Reset timer
}

// Apply impulse for movement
var _impulse_x = _dir_x * impulse_strength;
var _impulse_y = _dir_y * impulse_strength;

// Apply the impulse to the physics body
physics_apply_impulse(x, y, _impulse_x, _impulse_y);
