function SetRandomPoint(_owner, _xSub, _xAdd, _ySub, _yAdd) {
	if (!variable_instance_exists(_owner, targetX)) {
		show_debug_message("not exists");
		return;
	}
	_owner.targetX = random_range(xstart - _xSub, xstart + _xAdd);
	_owner.targetY = random_range(ystart - _ySub, ystart + _yAdd);
	show_debug_message($"set target pos {nameof(_owner)}");
}

