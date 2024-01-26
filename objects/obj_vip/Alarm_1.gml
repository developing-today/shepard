alarm[1] = 1.5 * gamespeed();

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
