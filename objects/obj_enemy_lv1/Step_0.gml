/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < attackDistance) {
		alarm[0] = -1;
		myFsm.ChangeState("attack");
	}
	else if (distance_to_object(obj_player) < detectDistance) {
		alarm[0] = -1;
		myFsm.ChangeState("chase");
	}
	else{
		// 가깝지 않으면 정찰
		myFsm.ChangeState("patrol");
	}
}

myFsm.Update();