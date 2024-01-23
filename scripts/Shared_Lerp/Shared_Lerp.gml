function apply_lerp_rotation_alarm_2_add() {
    //phy_rotation = lerp(_this_start_angle, _this_target_angle, 1/_this_lerp_time);
    _this_lerp_time -= 1;
    if (_this_lerp_time < _this_target_angle){
        alarm[2] = 1;
    }
}

function apply_lerp_rotation_alarm_2_subtract() {
    phy_rotation = lerp(_this_target_angle*1, _this_start_angle*1, 1/ _this_lerp_time);
	_this_lerp_time -= 1;
    if (_this_lerp_time > 0){
        alarm[2] = 1;
    }
}

function apply_lerp_rotation_force_add() {
    _this_force_dir += _this_target_angle / (_this_lerp_time_initial);
    var _fx = _this_force_power * cos(_this_force_dir);
    var _fy = _this_force_power * sin(_this_force_dir);
    var _x = phy_position_x;
    var _y = phy_position_y;
    physics_apply_force(_x,_y, _fx, _fy);
}

function apply_lerp_rotation_force_subtract() {
    _this_force_dir -= _this_target_angle / (_this_lerp_time_initial);
    var _fx = _this_force_power * cos(_this_force_dir);
    var _fy = _this_force_power * sin(_this_force_dir);
    var _x = phy_position_x;
    var _y = phy_position_y;
    physics_apply_force(_x,_y, _fx, _fy);
}