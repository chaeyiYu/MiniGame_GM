/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// create stat
originSpeed = 5;
myStats = new Struct_PlayerStats(100, originSpeed, 10, 10);

minX = sprite_width;
maxX = room_width - sprite_width;
minY = sprite_height;
maxY = room_height - sprite_height;


function Move() {
	var dirHorizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dirVertical = keyboard_check(vk_down) - keyboard_check(vk_up);
	
	if (dirHorizontal != 0 || dirVertical != 0) {
		var lookDir = point_direction(0, 0, dirHorizontal, dirVertical);
		var xAdd = lengthdir_x(myStats.moveSpeed, lookDir);
		var yAdd = lengthdir_y(myStats.moveSpeed, lookDir);

		// collision
		if place_meeting(x + xAdd, y, [global.tileCollider, obj_door]) {
			xAdd = 0;
		}
		if place_meeting(x, y + yAdd, [global.tileCollider, obj_door]) {
			yAdd = 0;
		}
		
		// water
		if place_meeting(x + xAdd, y, global.waterlayer) {
			xAdd *= 0.3;
		}
		if place_meeting(x, y + yAdd, global.waterlayer) {
			yAdd *= 0.3;
		}
		
		x += xAdd;
		y += yAdd;

		// flip
		if (dirHorizontal != 0) {
			image_xscale = -dirHorizontal;
		}

	}
	
}

function WalkOrRun() {
	if (keyboard_check(vk_shift)){
		myStats.SetMoveSpeed(originSpeed * 1.5);
	}
	else {
		myStats.SetMoveSpeed(originSpeed);
	}
	Move();
}

function Heal(_amount) {
	myStats.Heal(_amount);
}

function Damage(_amount) {
	myStats.Damage(_amount);
}

function OnDead() {
	global.gameResult = eResult.over;
	with (obj_fadeout) {
		StartFadeOut(0.03);
	}
	alarm[1] = 60 * 1;
}

function GoToInitPos() {
	x = xstart;
	y = ystart;

	with (obj_fadeout) {
		StartFadeOut(0.04);
	}
}