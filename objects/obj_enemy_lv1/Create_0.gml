/// @description

event_inherited();

timer = 0;


#region 함수정의
function InitState() {
	patrolStateMage = new PatrolState_Mage(self);
	chaseStateMage = new ChaseState_Mage(self);
	attackStateMage = new AttackState_Mage(self);
	
	// state 이름과 객체 매핑
	mageStateMap = {
	"patrol" : patrolStateMage,
	"chase" : chaseStateMage,
	"attack" : attackStateMage,
	}
	
	myFsm.Register(mageStateMap, "patrol");
}
#endregion

InitState();
