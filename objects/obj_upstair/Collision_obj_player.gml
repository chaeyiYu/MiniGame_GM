/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var w = display_get_width();
var h = display_get_height();
if (global.key == global.maxKey) {
	// game clear
	global.gameResult = eResult.clear;
	room_goto(r_game_result);
}
