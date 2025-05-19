/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (global.key >= 3 && point_distance(x, y, obj_player.x, obj_player.y) < disToPlayer) {
	show_debug_message("~~~~~~~~~~~~~~~~door destroy~~~~~~~~~~~")
	instance_destroy();
}