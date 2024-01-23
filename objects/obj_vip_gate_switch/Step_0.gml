var _precise = true; // Whether to use precise collision checking
var _notme = true; // Whether to exclude the instance running the code
if (!portal_collided) {
	var _colliding_portal_instance = collision_circle(x, y, radius*6, obj_portal_small, _precise, _notme);
	if (_colliding_portal_instance != noone) {
		view_visible[3] = true;
		instance_destroy(obj_portal_small);
		instance_create_depth(515, 75, depth, obj_vip_text_returned_portal);
	}
}
var _colliding_mob_instance = collision_circle(x, y, radius*6, obj_mob_base, _precise, _notme);
if (_colliding_mob_instance != noone) {
	create_vip_gate() // yes, this could completely break the game sometimes :-) don't get a mob caught in the wrong spot
}

var _colliding_instance = collision_circle(x, y, radius, obj_kinetic_solid, _precise, _notme);
if (_colliding_instance == noone) {
	updated = 0
	return
}
if updated > 0 {
	return
}
view_visible[3] = true
updated += 1
toggle_vip_gate()
