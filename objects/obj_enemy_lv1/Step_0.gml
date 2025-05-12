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
		if (distance_to_object(obj_player) > detectDistance + 5) {
			myFsm.ChangeState("patrol");
		}
		else if (distance_to_object(obj_player) < attackDistance) {
			myFsm.ChangeState("attack");
		}
}


if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < attackDistance) {
		myFsm.ChangeState("attack");
	}
	else if (distance_to_object(obj_player) < detectDistance) {
		myFsm.ChangeState("chase");
	}
	else{
		// 가깝지 않으면 정찰
		myFsm.ChangeState("patrol");
	}
}