function handle_spark_mob_interaction(){
	var _precise = true; // Whether to use precise collision checking
	var _notme = true; // Whether to exclude the instance running the code
	var _colliding_instance = collision_circle(x, y, radius, obj_mob, _precise, _notme);
	if (_colliding_instance == noone) {
		_colliding_instance = collision_circle(x, y, radius, obj_mob_puddle, _precise, _notme);
    	if (_colliding_instance == noone) {
			instance_create_depth(x, y, depth, obj_mob);
			instance_destroy()
		}
		return
	}
	instance_create_depth(x, y, depth, obj_mob);
	instance_destroy()
}
