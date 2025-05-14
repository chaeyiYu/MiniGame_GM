/// @description 여기에 설명 삽입

event_inherited();

switch (myFsm.currentState) {
	case "idle" :
		if (point_distance(x, y, obj_player.x, obj_player.y) < attackDistance) {
		myFsm.ChangeState("attack");
		show_debug_message("slime attack change");
		}
		break;
}
