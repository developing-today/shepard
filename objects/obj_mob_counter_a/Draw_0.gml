if view_visible[2] {
    var _total_milliseconds = current_time;
    var _total_seconds = _total_milliseconds / 1000;
    var _hours = floor(_total_seconds / 3600);
    var _minutes = floor((_total_seconds mod 3600) / 60);
    var _seconds = floor(_total_seconds mod 60);
    var _milliseconds = _total_milliseconds mod 1000;

    var _hours_str = string(_hours);
    var _minutes_str = (_minutes < 10) ? "0" + string(_minutes) :
  string(_minutes);
    var _seconds_str = (_seconds < 10) ? "0" + string(_seconds) :
  string(_seconds);
    var _milliseconds_str = string(_milliseconds);
    // Ensure milliseconds have leading zeros
    while (string_length(_milliseconds_str) < 3) {
        _milliseconds_str = "0" + _milliseconds_str;
    }

    var _time_format = _hours_str + ":" + _minutes_str + ":" + _seconds_str +
  "." + _milliseconds_str;
  
	draw_text(x, y,
		"mobs: " + string(instance_number(obj_mob_base))
		+ "\n                 " + "mobs: " + string(instance_number(obj_mob_base))
		+ " " + string(instance_number(obj_mob))
		+ " " + string(instance_number(obj_mob_puddle))
		+ "\n                 squiggles: " + string(instance_number(obj_squiggle_base))
		+ " " + string(instance_number(obj_squiggle_normal))
		+ " " + string(instance_number(obj_squiggle_tiny))
		+ " " + string(instance_number(obj_squiggle_micro))
		+ " " + string(instance_number(obj_squiggle_base) - instance_number(obj_squiggle_active))
		+ " " + string(instance_number(obj_squiggle_active))
		+ "\n                 sparks: " + string(instance_number(obj_spark))
		+ "\n                 staffs: " + string(instance_number(obj_shepard_staff))
		+ "\n                 steps: " + string(obj_sun.counter)
		+ "\n                 time: " + _time_format
		+ "\n                 clock: " + date_datetime_string(date_current_datetime())
	);
}
