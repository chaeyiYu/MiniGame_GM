/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
event_inherited();

switch (myFsm.currentState) {
	case "patrol" :
		if (distance_to_object(obj_player) < detectDistance) {
		myFsm.ChangeState("chase");
		}
		break;
	case "chase" :
		if (distance_to_object(obj_player) > detectDistance + 50) {
			myFsm.ChangeState("patrol");
		}
		else if (distance_to_object(obj_player) < attackDistance) {
			myFsm.ChangeState("attack");
		}
}