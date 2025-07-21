/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
event_inherited();

switch (myFsm.currentState) {
	case "patrol" :
		if (point_distance(x, y, obj_player.x, obj_player.y) < attackDistance) {
			myFsm.ChangeState("attack");
		}	
		else if (point_distance(x, y, obj_player.x, obj_player.y) < detectDistance) {
			alarm[0] = -1;
			myFsm.ChangeState("chase");
		}
		break;
	case "chase" :
		if (point_distance(x, y, obj_player.x, obj_player.y) >= detectDistance) {
			myFsm.ChangeState("patrol");
		}
		else if (point_distance(x, y, obj_player.x, obj_player.y) < attackDistance) {
			myFsm.ChangeState("attack");
		}
}