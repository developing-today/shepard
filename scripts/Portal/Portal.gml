function handle_portal_shepard_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*1, obj_shepard, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	// teleport
}
function handle_portal_shepard_staff_interaction() {
	var _precise = true;  // Whether to use precise collision checking
	var _notme = true;  // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius*3, obj_shepard_staff, _precise, _notme);
	if _colliding_instance == noone {
		return
	}
	obj_shepard.portal_follow = true;
}
