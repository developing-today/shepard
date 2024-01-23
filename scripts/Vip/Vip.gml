function fade_vip_for_portal(){
	fade_rate = portal_fade_rate
    alarm[0] = 1;
}

function count_mob_instances_in_region(_x1, _y1, _x2, _y2) {
    var _count = 0;
    var _total_mobs = instance_number(obj_mob_base);

    for (var _i = 0; _i < _total_mobs; ++_i) {
        var _inst = instance_find(obj_mob_base, _i);
        if (_inst.x >= _x1 && _inst.x <= _x2 && _inst.y >= _y1 && _inst.y <= _y2)
{
            _count += 1;
        }
    }

    return _count;
}