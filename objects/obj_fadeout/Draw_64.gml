/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var width = display_get_width();
var height = display_get_height();

if (isFade && surface_exists(surfFadeOut)) {
	surface_set_target(surfFadeOut);
	draw_clear(c_black);
	draw_set_alpha(alpha);
	surface_reset_target();
	draw_surface_stretched(surfFadeOut, 0, 0, width, height);
	
	//show_debug_message("fade out ing ~~~~~~~~");
	
	if (alpha <= 0) {
		surface_free(surfFadeOut);
		draw_set_alpha(1);
		isFade = false;
		//show_debug_message("fade out end~~~~~~~~~~~~~~~");
	}
}