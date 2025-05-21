/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
with(obj_player) {
	if (!canMove) {
		if (camera_get_view_x(view_camera[0]) == xstart - 480) {
			canMove = true;
		}
	}
}