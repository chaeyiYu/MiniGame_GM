/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var sizeDiv = 10;

// 초기 생성
if (!isDrawed) {
	isDrawed = true;
	RefreshBG();
}

// 없으면 생성
if (!surface_exists(surfMinimapBg)) {
	RefreshBG();
}
draw_surface(surfMinimapBg, x, y);			// 여기서는 swap 없음


if (!surface_exists(surfMinimap)) {
	surfMinimap = surface_create(w, h);
}
surface_set_target(surfMinimap);	// swap 발생

draw_clear_alpha(c_black, 0);
with (obj_player) {
	draw_sprite_ext(spr_pixel, 0, x/sizeDiv, y/sizeDiv, 0.5, 0.5, 0, c_red, 1);		// swap 발생
}
surface_reset_target();

draw_surface(surfMinimap, x, y);






