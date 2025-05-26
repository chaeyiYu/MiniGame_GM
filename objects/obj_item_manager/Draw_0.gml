/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
global.originColor = draw_get_color();


for (var i = array_length(global.itemEffects) - 1; i>=0 ; i--) {
	var item = global.itemEffects[i];
	
	if (!item.isEffectDraw) {
		draw_sprite(item.sprite, -1, item.x, item.y);
	}
	else{
	draw_sprite(item.sprite, -1, item.x, item.y);

	draw_sprite_ext(spr_crossitem_effect, -1, item.x, item.y, item.rad / 32, item.rad / 32, 0, image_blend, image_alpha);
	//draw_circle(item.x, item.y, item.rad, false);	// 추가 swap 유발

	}
}