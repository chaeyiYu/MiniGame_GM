/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_set_font(font_kor);
var dw = display_get_gui_width();
var dh = display_get_gui_height();

if (instance_exists(obj_player)) {
	draw_text_transformed_color(dw * 0.97, dh * 0.1, $"{obj_player.currentProjectile}", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1)
}