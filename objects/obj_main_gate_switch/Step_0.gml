var _precise = true;  // Whether to use precise collision checking
var _notme = true;  // Whether to exclude the instance running the code
var _colliding_instance = collision_circle(x, y, radius, obj_kinetic_solid, _precise, _notme);
if (_colliding_instance == noone) {
	updated = 0
	return
}
if updated > 0 {
	return
}
view_visible[4] = true
updated += 1
toggle_main_gate()
