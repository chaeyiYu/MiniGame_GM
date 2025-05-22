/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
delay -= delta_time / 1_000_000;
alpha -= 0.02;
y -= yOffset;

if (delay <= 0) {
	instance_destroy();
}