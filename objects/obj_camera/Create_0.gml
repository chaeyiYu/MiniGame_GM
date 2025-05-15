/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// lerp ??
view_enabled = true;
//var view = view_get_camera(0);

view_set_visible(0, true);
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 1600;
view_hport[0] = 900;

var _dwidth = display_get_width();
var _dheight = display_get_height();

view_camera[0] = camera_create_view(0, 0, view_wport[0] / 2, view_hport[0] / 2, 0, obj_player, -1, -1, view_wport[0] / 2, view_hport[0] / 2);