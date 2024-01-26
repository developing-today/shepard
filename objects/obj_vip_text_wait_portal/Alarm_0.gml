if !instance_exists(obj_vip) {
	instance_destroy()
}

if (obj_shepard.deaths_total >= array_length(lines)-3) {
    current_line = ((obj_shepard.deaths_total - array_length(lines)) % 3) + (array_length(lines)-3);
} else {
    current_line = obj_shepard.deaths_total;
}

alarm[0] = gamespeed() * 1;
