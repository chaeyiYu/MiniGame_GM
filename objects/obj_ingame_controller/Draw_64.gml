/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var dw = display_get_gui_width();
var dh = display_get_gui_height();

var xOffset = 0.05;
// item
// 여기서 아이템 그리면 swap 1개 줄어듦
if (instance_exists(obj_player)) {
	for (var i = 0; i < array_length(global.myItems); i++) {
		var spr = global.myItemsSprite[$ global.myItems[i].Id];
		draw_sprite_ext(spr, 0, dw * (0.4 + xOffset * i), dh * 0.06, 1.3, 1.3, 0, image_blend, 1);
	}
}
// key image
var key = draw_sprite_ext(spr_order, 0, dw * 0.92, dh * 0.06, 2, 2, image_angle, image_blend, image_alpha);

// text 한 번에 해서 swap 줄임
// key 개수
draw_text_transformed(dw * 0.95 , dh * 0.04, global.key, 1.5, 1.5, image_angle);
// hp text
draw_text_transformed(dw * 0.02 , dh * 0.025, "HP", 1.3, 1.3, image_angle);
// stamina text
draw_text_transformed(dw * 0.01 , dh * 0.065, "STM", 1.3, 1.3, image_angle);

// hp bar
draw_healthbar(dw * 0.05, dh * 0.035, dw * 0.3, dh * 0.055, obj_player.myStats.hp, c_black, c_red, c_lime, 0, true, true);
// stamina bar
draw_healthbar(dw * 0.05, dh * 0.07, dw * 0.3, dh * 0.085, obj_player.myStats.stamina, c_black, c_dkgray, c_orange, 0, true, true);

