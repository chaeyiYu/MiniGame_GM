/// @description 여기에 설명 삽입

targetX = x;
targetY = y;

tileCollision = layer_tilemap_get_id("Tiles_Wall");

alarm[0] = 60;

myFsm = new EnemyFSM();

function EnemyMoveBase() {
	var _dir = point_direction(x, y, targetX, targetY);
	var _dis = point_distance(x, y, targetX, targetY);
	var _moveAdd = clamp(_dis, -moveSpeed, moveSpeed);
	
	var _dx = lengthdir_x(_moveAdd, _dir);
	var _dy = lengthdir_y(_moveAdd, _dir);
	
	// collision
	if place_meeting(x + _dx, y, [tileCollision, obj_enemy_parent_abs]) {
		_dx = 0;
	}
	
	if place_meeting(x, y + _dy, [tileCollision, obj_enemy_parent_abs]) {
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