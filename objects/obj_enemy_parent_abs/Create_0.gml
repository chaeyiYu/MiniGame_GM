/// @description 여기에 설명 삽입

targetX = x;
targetY = y;

tileCollision = layer_tilemap_get_id("Tiles_Wall");

//alarm[1] = 60;

isSlow = false;
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
		//show_debug_message("x 앞에 벽");
	}
	
	if place_meeting(x, y + _dy, [tileCollision, obj_enemy_parent_abs]) {
		_dy = 0;
		//show_debug_message("y 앞에 벽");
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

function SetTarget() {
	if (instance_exists(obj_player) && distance_to_object(obj_player) < detectDistance){
		targetX = obj_player.x;
		targetY = obj_player.y;
		show_debug_message("플 레 이 어 발 견");
		return true;
	}
else
	{
		randomize();
		targetX = random_range(xprevious - randMinX, xprevious + randMaxX);
		targetY = random_range(yprevious - randMinY, yprevious + randMaxY);
		//show_debug_message("random target pos");
		return false;
	}
}

function Slow() {
	isSlow = true;
	moveSpeed /= 2;
}