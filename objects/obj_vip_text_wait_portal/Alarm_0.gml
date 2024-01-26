current_line += 1;
if (current_line < array_length(lines)) {
	if lines[current_line] == "\n" {
		alarm[0] = 1
		view_visible[1] = true
		return
	}
	var _timer = gamespeed() * 1;
	
	if current_line > 0 && lines[current_line - 1] == -1 {
		_timer -= 1
	}
    alarm[0] = _timer;
} else {
    instance_destroy()
}
