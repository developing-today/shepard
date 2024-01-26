lines = [".", "..", "..."];

if obj_shepard.puddle_total_consumed > 0 {
    var _next_index = array_length(lines); // Get the current length of the
    lines[_next_index] = "Why are you wet?"; // Append the new string
}

var _mob_count = count_mob_instances_in_region(930, 60, 1240, 330); // the

if (_mob_count > 6) {
    lines[array_length(lines)] = "Very well."; // Append string when
}
if (_mob_count < 4) {
    lines[array_length(lines)] = "You must try to succeed."; // Append
}
if (_mob_count < 2) {
    lines[array_length(lines)] = "This is not good."; // Append string
}

lines[array_length(lines)] = "I must inform the council."; // Append the

if (_mob_count < 9) {
    lines[array_length(lines)] = "Clean it up."; // Append string when
}


if (obj_shepard.deaths_total == 0) {
	lines[array_length(lines)] = "."
	lines[array_length(lines)] = ".."
	lines[array_length(lines)] = "..."
	lines[array_length(lines)] = "Good job."
}
lines[array_length(lines)] = "Go!"

current_line = 0;
alarm[0] = 1 * gamespeed();
with (obj_vip) {
	fade_vip_for_portal();
}
with (obj_portal_inphysical) {
    visible = true;
}
