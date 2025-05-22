/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (currentStmP == EPlayerStmStatus.warnExhausted && myStats.isdrained) {
	// 색 상 변 화?
	draw_sprite(spr_warning, -1, x + 5, y - 20);
	image_blend = c_white;
}
else if (currentStmP == EPlayerStmStatus.exhausted) {
	draw_sprite(spr_exhausted, -1, x + 5, y - 20);
	image_blend = c_purple;
}
else {
	image_blend = c_white;
}

if (isHit) {
	if (hitTimer >= 1.0 || hitTimer <= 0.5) {
		image_alpha = 0.3;
	}
}

draw_self();
image_alpha = 1;
//draw_set_alpha(1);