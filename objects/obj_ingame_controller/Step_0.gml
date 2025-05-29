/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (global.IsFirstStart) {
	fadeOutTime -= delta_time / 1_000_000;
	
	if (fadeOutTime <= 0) {
		global.IsFirstStart = false;
	}
}

if (keyboard_check_pressed(ord("I"))) {
	showHelp = !showHelp;
}