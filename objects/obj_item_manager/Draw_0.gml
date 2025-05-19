/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
global.originColor = draw_get_color();


for (var i = array_length(global.itemEffects) - 1; i>=0 ; i--) {
	var item = global.itemEffects[i];
	
	if (!item.isEffectDraw) {
		draw_sprite(item.sprite, -1, item.x, item.y);
		continue;
	}

	draw_set_alpha(0.2);
	draw_set_color(c_yellow);
	draw_circle(item.x, item.y, item.radius, false);
	
	draw_set_alpha(1);
	draw_set_color(global.originColor);
	draw_sprite(item.sprite, -1, item.x, item.y);
}