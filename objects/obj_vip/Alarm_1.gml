alarm[1] = 1.5 * game_get_speed(gamespeed_fps);

if (instance_exists(obj_vip_gate)) {
    vip_gate_locked += 1
} else {
	vip_gate_locked = 0
}

if (vip_gate_locked > 3) {
    with (obj_vip_gate) {
        instance_destroy();
    }
    vip_gate_locked = 0; // Reset the counter after destroying the
}
