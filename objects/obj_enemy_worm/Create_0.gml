/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

isGoingDown = true;

function SetRangeOfY() {
	randMinY = random_range(0.1, 1.0);
	randMaxY = random_range(3.0, 4.5);
}

function MoveVertical() {
	var yOffset = random_range(randMinY, randMaxY);
	
	targetX = x;
	targetY = isGoingDown ? y + yOffset * moveSpeed: y - yOffset * moveSpeed;
	
	if place_meeting(targetX, targetY, global.wallLayer) {
		isGoingDown = !isGoingDown;
	}
	else {
		y = targetY;
	}
}

function InitState() {
	moveStateWorm = new MoveState_Worm(self);
	attackStateWorm = new AttackState_Worm(self);
	
	// state 이름과 객체 매핑
	wormStateMap = {
	"move" : moveStateWorm,
	"attack" : attackStateWorm,
	}
	
	myFsm.Register(wormStateMap, "move");
}

InitState();