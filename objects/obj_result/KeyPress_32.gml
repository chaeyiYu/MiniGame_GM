/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
instance_destroy(resultObj);
instance_destroy();
//game_restart();

if (global.gameResult == eResult.over) {
	global.gameResult = eResult.none;
	global.key = 0;
	room_goto(r_ingame);
}