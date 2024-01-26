function handle_spark_mob_interaction(){
	if destroy_fade_rate <= 0 {
		var _precise = true; // Whether to use precise collision checking
		var _notme = true; // Whether to exclude the instance running the code
		var _colliding_instance = collision_circle(x, y, radius, obj_mob, _precise, _notme);
		if (_colliding_instance == noone) {
			_colliding_instance = collision_circle(x, y, radius, obj_mob_puddle, _precise, _notme);
	    	if (_colliding_instance != noone) {
				instance_create_depth(x, y, depth, obj_mob_puddle);
				destroy_spark();
			}
			_colliding_instance = collision_circle(x, y, radius, obj_kinetic_solid, _precise, _notme);
			if (_colliding_instance == noone) {
				return;
			}
			if duration_after_interaction < alarm[0] {
				alarm[0] = duration_after_interaction
			}
			return;
		}
		instance_create_depth(x, y, depth, obj_mob);
		destroy_spark()	
	}
}

function destroy_spark() {
	if destroy_fade_rate <= 0 || destroy_fade_rate > default_destroy_fade_rate {
		destroy_fade_rate = default_destroy_fade_rate
	    alarm[1] = 1;
	}
}

function fade_spark() {
	if fade_rate <= 0 || fade_rate > default_fade_rate {
		fade_rate = default_fade_rate
		alarm[0] = 1;
	}
}

function create_spark_event() {
	duration = 12 * gamespeed();
	duration_after_interaction = 3 * gamespeed();

	alarm[0] = duration;

	default_fade_rate = gamespeed() * 5;
	fade_rate = 0;
	default_destroy_fade_rate = gamespeed() * 2;
	destroy_fade_rate = 0;
}

function destroy_spark_event_alarm_1() {
	destroy_fade_rate -= 1;
	if destroy_fade_rate == 0 || image_alpha <= 0 {
		instance_destroy()
	} else {
	    image_alpha = destroy_fade_rate / default_destroy_fade_rate;
		alarm[1] = 1
	}
}

function fade_spark_event_alarm_0() {
	fade_rate -= 1;
	if fade_rate == 0 || image_alpha <= 0 {
		instance_destroy()
	} else {
	    image_alpha = fade_rate / default_fade_rate;
		alarm[0] = 1
	}
}

function create_spark(_number_of_sparks) {
	var _radius = radius * 5

    var _i, _x, _y, _inst, _dist, _attempt, _max_attempts = 128;

    for (_i = 0; _i < _number_of_sparks; _i++)
    {
        _attempt = 0;
        do
        {
            _x = random_range(x - _radius, x + _radius);
            _y = random_range(y - _radius, y + _radius);
            _dist = point_distance(x, y, _x, _y);
            _inst = instance_position(_x, _y, obj_shepard);
            _attempt += 1;
        }
        until ((_inst == noone && _dist <= _radius) || _attempt >
  _max_attempts);

        if (_inst == noone && _dist <= _radius) {
            instance_create_depth(_x, _y, depth, obj_spark);
        }
    }	
}
