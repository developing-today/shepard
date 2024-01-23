function create_fuel() {
    var _fuel = instance_create_depth(415, 110, depth, obj_fuel);
    _fuel.phy_rotation = 40;
	_fuel.image_xscale = 0.2;
	_fuel.image_yscale = 0.2;
}

function handle_fuel_shepard_staff_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius, obj_shepard_staff, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
    obj_shepard.fuel_follow = true;
}

function handle_fuel_shepard_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius, obj_shepard, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	
	obj_shepard.fuel_total_consumed += 1
	

	fade_fuel_for_consume()
}

function fade_fuel_for_consume() {
	fade_rate = consume_fade_rate
    alarm[0] = 1;
}
