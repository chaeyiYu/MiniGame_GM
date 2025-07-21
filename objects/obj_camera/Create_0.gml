/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

view_enabled = true;
view_set_visible(0, true);

cameraWidth = 960;
cameraHeight = 540;

view_camera[0] = camera_create_view(0, 0, cameraWidth, cameraHeight, 0, obj_player, 7, 7, cameraWidth / 2, cameraHeight / 2);