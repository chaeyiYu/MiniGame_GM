/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var dw = display_get_gui_width();
var dh = display_get_gui_height();
var key = draw_sprite_ext(spr_order, 0, dw * 0.92, dh * 0.06, 2, 2, image_angle, image_blend, image_alpha);
draw_text_transformed(dw * 0.95 , dh * 0.04, global.key, 1.5, 1.5, image_angle);

// hp
draw_text_transformed(dw * 0.02 , dh * 0.02, "HP", 1.5, 1.5, image_angle);
draw_healthbar(dw * 0.05, dh * 0.025, dw * 0.3, dh * 0.055, obj_player.myStats.hp, c_black, c_red, c_lime, 0, true, true);

var xOffset = 0.05;
// item
if (instance_exists(obj_player)) {
	for (i = 0; i < array_length(global.myItems); i++) {
		var spr = global.myItemsSprite[$ global.myItems[i].Id];
		draw_sprite_ext(spr, 0, dw * (0.4 + xOffset * i), dh * 0.06, 1.3, 1.3, 0, image_blend, 1);
	}
}