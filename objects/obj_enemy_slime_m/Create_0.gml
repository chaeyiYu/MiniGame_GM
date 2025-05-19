/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

event_inherited();

function InitState() {
	idleStateSlime = new IdleState_Slime(self);
	attackStateSlime = new AttackState_Slime(self);
	
	// state 이름과 객체 매핑
	slimeSmallStateMap = {
	"idle" : idleStateSlime,
	"attack" : attackStateSlime,
	}
	
	myFsm.Register(slimeSmallStateMap, "idle");
}

InitState();