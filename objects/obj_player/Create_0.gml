/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
enum EPlayerStmStatus {
	normal,
	warnExhausted,
	exhausted,
}

enum EPlayerMoveStatus {
	stop,
	walk,
	run,
}

currentMoveP = EPlayerMoveStatus.stop;
currentStmP = EPlayerStmStatus.normal;

// create stat
originSpeed = 3;
hp = 100;
recovery = 10;
recoverDelay = 10;
stamina = 100;
recoveryStamina = 10;
myStats = new Struct_PlayerStats(hp, originSpeed, recovery, recoverDelay, stamina, recoveryStamina);

// stamina 감소, 회복 비율/정지 타이머
staminaDrainRate = 20;
staminaRegenRate = 10;
exhaustedElapsed = 0.0;
exhaustedTimer = 2.0;

hitElapsed = 0;
hitTimer = 1.5;
isHit = false;

canMove = false;

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
		currentMoveP = EPlayerMoveStatus.run;
		
		// stamina 상태에 따른 달리기 속도 설정
		if (currentStmP == EPlayerStmStatus.normal) {
			myStats.SetMoveSpeed(originSpeed * 1.5);
		}
		else {
			myStats.SetMoveSpeed(originSpeed * 1.2);
		}
	}
	else {
		currentMoveP = EPlayerMoveStatus.walk;
		myStats.SetMoveSpeed(originSpeed);
	}
	Move();
}

function Heal(_amount) {
	myStats.Heal(_amount);
	var hpTxt = instance_create_layer(x, y - 30, global.instanceLayer, obj_damage_text);
	hpTxt.SetHpText($"+{_amount}", c_lime);
}

function Damage(_amount) {
	myStats.Damage(_amount);
	isHit = true;
	var hpTxt = instance_create_layer(x, y - 30, global.instanceLayer, obj_damage_text);
	hpTxt.SetHpText($"-{_amount}", c_red);
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