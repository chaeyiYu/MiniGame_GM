/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var width = display_get_gui_width();
var height = display_get_gui_height();

if (isFade && !surface_exists(surfFadeOut)) {
	surfFadeOut = surface_create(width, height);
	view_surface_id[0] = surfFadeOut;
	
	show_debug_message("surface create");
}