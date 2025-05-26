/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_set_font(font_kor);
if (showText) {
	//draw_set_color(c_red);
	//draw_text_transformed(x, y - 50, $"{global.key / requiredKey}", 1, 1, 0);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(x, y - 50, $"{global.key}/{requiredKey}", 1, 1, 0, c_red, c_red, c_red, c_red, 1);
}

draw_self();
