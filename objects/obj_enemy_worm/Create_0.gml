/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

isGoingDown = true;

function SetRangeOfY() {
	randomize();
	randMinY = random_range(0.1, 2.0);
	randMaxY = random_range(8.0, 10.0);
}

function MoveVertical() {
	randomize();
	
	yOffset = random_range(randMinY, randMaxY);
	
	targetX = x;
	targetY = isGoingDown ? y + yOffset : y - yOffset;
	
	if place_meeting(targetX, targetY, tileCollision) {
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