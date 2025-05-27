/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//draw_circle(x, y, attackDistance, true);

if (isHit) {
	if (hitTimer >= 1.0 || hitTimer <= 0.5) {
		image_alpha = 0.3;
	}
}

if (isDead) {
	image_alpha = alpha;
}
draw_self();

image_alpha = 1;
