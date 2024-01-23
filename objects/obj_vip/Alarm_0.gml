image_alpha -= fade_rate;

if(image_alpha > 0) {
    alarm[0] = 1; // set alarm[0] to trigger again in the next step
} else {
    alarm[0] = -1; // stop the alarm when fade is complete
	instance_destroy(obj_portal_inphysical)
	instance_create_depth(x, y, depth, obj_portal_small)
	with (obj_portal_medium) {
		visible = true
	}
	create_fuel()
	create_vip_gate()
	instance_destroy()
}
