impulse_strength = 1; // Adjust as needed for desired movement speed
dir_x = irandom(1) * 2 - 1; // Randomly -1 or 1
dir_y = irandom(1) * 2 - 1; // Randomly -1 or 1
change_dir_timer = irandom_range(3 * game_get_speed(gamespeed_fps), 5 * game_get_speed(gamespeed_fps))
