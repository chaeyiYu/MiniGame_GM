/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var cam = view_camera[0];
var vx  = camera_get_view_x(cam);
var vy  = camera_get_view_y(cam);
var vw  = camera_get_view_width(cam);
var vh  = camera_get_view_height(cam);

if (showHelp) {
draw_sprite_ext(spr_help, -1, vx + vw/2, vy + vh/2, 1, 1, 0, image_blend, 1);
}
// test