/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// create stat
myStats = new Struct_PlayerStats(100, 3, 10, 10);

// item inventroy
myItems = [];

minX = sprite_width;
maxX = room_width - sprite_width;
minY = sprite_height;
maxY = room_height - sprite_height;

tileCollider = layer_tilemap_get_id("Tiles_Wall");


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
		myStats.SetMoveSpeed(5);
	}
	else {
		myStats.SetMoveSpeed(3);
	}
	Move();
}

function UseItem() {
// 아이템 id 받아와서 해당 아이템.Use
// 각 아이템 내에서 Use 효과 구현
// 던지기, 내려놓기 등 플레이어 행동 구분?

}


function Damage(_amount) {
	myStats.Damage(_amount);
}

function OnDead() {
	// temp. 
	// 게임오버 오브젝트 만들어서 창 띄우기 or 다른 함수 호출??
	//instance_create_depth(0, 0, 0, obj_game_over);
	
	// ...... 할일 하고 마지막에
	//instance_destroy();
}

function GoToInitPos() {
	x = xstart;
	y = ystart;
	with (obj_fadeout) {
		StartFadeOut(0.04);
	}
}