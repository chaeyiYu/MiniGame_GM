/// @description 여기에 설명 삽입

targetX = x;
targetY = y;

minX = sprite_width;
maxX = room_width - sprite_width;
minY = sprite_height;
maxY = room_height - sprite_height;

isSlow = false;

myFsm = new EnemyFSM();

function EnemyMoveBase() {
	var _dir = point_direction(x, y, targetX, targetY);
	var _dis = point_distance(x, y, targetX, targetY);
	var _moveAdd = clamp(_dis, -moveSpeed, moveSpeed);
	
	var _dx = lengthdir_x(_moveAdd, _dir);
	var _dy = lengthdir_y(_moveAdd, _dir);
	
	// collision
	if place_meeting(x + _dx, y, [global.wallLayer, obj_enemy_parent_abs, global.shelterLayer]) {
		_dx = 0;
	}
	
	if place_meeting(x, y + _dy, [global.wallLayer, obj_enemy_parent_abs, global.shelterLayer]) {
		_dy = 0;
	}
	
	x += _dx;
	y += _dy;
	
	// flip
	if (_dx > 0) {
		image_xscale = -1;
	}
	else if (_dx < 0) {
		image_xscale = 1;
	}
}

function SetTarget(_targetObj) {
	targetX = _targetObj.x;
	targetY = _targetObj.y;
}

function SetRandomTargetPos() {
	targetX = random_range(xprevious - randMinX, xprevious + randMaxX);
	targetY = random_range(yprevious - randMinY, yprevious + randMaxY);
}


function Slow() {
	moveSpeed /= 4;
	isSlow = true;
}

function KillEveryBossMon() {
	instance_destroy(obj_slimeBoss2);
}