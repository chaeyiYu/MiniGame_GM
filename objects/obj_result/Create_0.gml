/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

instanceLayer = layer_get_id("Instances");

switch (global.gameResult) {
	case eResult.clear:
		instance_create_layer(camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2, instanceLayer, obj_game_clear);
		break;
	case eResult.over:
		instance_create_layer(camera_get_view_width(view_camera[0])/2, camera_get_view_height(view_camera[0])/2, instanceLayer, obj_game_over);
		break;
}