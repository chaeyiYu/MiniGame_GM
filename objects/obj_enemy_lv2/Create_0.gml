/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

Enemy1Act = new State();
Enemy1Attack = new State();

Enemy1Act.OnEnter = MoveEnter;
Enemy1Act.OnExit = function() {
	show_debug_message("exit");
}

enemy1StateMap = {
	"attack" : Enemy1Attack,
}



// *** sample
function MoveEnter() { show_debug_message("move enter")};

myFsm.Register(enemy1StateMap, "attack");
