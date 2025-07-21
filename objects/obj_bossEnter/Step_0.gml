/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
fadeOutTime -= delta_time / 1_000_000;
if (fadeOutTime <= 0) {
	instance_destroy();
}