function open_pen_gate_quick() {
	if !enabled {
		return
	}
	kill_pen_gate()
    enabled = false
	alarm[0] = 5 * game_get_speed(gamespeed_fps)
}

function toggle_pen_gate() {
    var _new_enabled = !enabled
	enabled = _new_enabled
	
	if _new_enabled {
		create_pen_gate()
	} else {
		kill_pen_gate()
	}
}

function toggle_main_gate() {
    var _new_enabled = !enabled
	enabled = _new_enabled
	
	if _new_enabled {
		create_main_gate()
	} else {
		kill_main_gate()
	}
}

function toggle_vip_gate() {
    var _new_enabled = !enabled
	enabled = _new_enabled
	
	if _new_enabled {
		create_vip_gate()
	} else {
		kill_vip_gate()
	}
}

function solid_wall() {
	var _fix = physics_fixture_create();
	physics_fixture_set_box_shape(_fix, sprite_width / 2, sprite_height / 2);
	physics_fixture_set_density(_fix, 1000000000); // Set density to 0
	physics_fixture_set_restitution(_fix, 1); // Optional: set restitution (bounciness)
	physics_fixture_set_friction(_fix, 1); // Optional: set friction
	physics_fixture_bind(_fix, id);
	physics_fixture_delete(_fix);
}

function create_vip_gate() {
	with (obj_vip_gate_placeholder) {
	    var _id = instance_create_depth(x, y, depth, obj_vip_gate);
	    _id.creator_id = id;
	}
}

function create_main_gate() {
	with (obj_main_gate_placeholder) {
	    var _id = instance_create_depth(x, y, depth, obj_main_gate);
	    _id.creator_id = id;
	}
}

function create_pen_gate() {
	with (obj_pen_gate_placeholder) {
		var _id = instance_create_depth(x, y, depth, obj_pen_gate);		
	    _id.creator_id = id;
	}
}
function kill_vip_gate() {
	with (obj_vip_gate) {
     	//if creator_id != 0 { /* reposition placeholder before death? probably not, probably during life after n seconds staying within radius */	}
		instance_destroy()
	}
}
function kill_main_gate() {
	with (obj_main_gate) {
     	//if creator_id != 0 { /* reposition placeholder before death? probably not, probably during life after n seconds staying within radius */	}
		instance_destroy()
	}
}
function kill_pen_gate() {
	with (obj_pen_gate) {
		//if creator_id != 0 { /* reposition placeholder before death? probably not, probably during life after n seconds staying within radius */	}
		instance_destroy()
	}
}
// reposition vip placeholder
// reposition main placeholder
// reposition pen placeholder

function bouncy_solid_wall() {
	var _fix = physics_fixture_create();
	physics_fixture_set_box_shape(_fix, sprite_width / 2, sprite_height / 2);
	physics_fixture_set_density(_fix, 1000000000); // Set density to 0
	physics_fixture_set_restitution(_fix, 100); // Optional: set restitution (bounciness)
	physics_fixture_set_friction(_fix, 0); // Optional: set friction
	physics_fixture_bind(_fix, id);
	physics_fixture_delete(_fix);
}