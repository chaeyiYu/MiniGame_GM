/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var key = draw_sprite_ext(spr_order, 0, 32, 32, 2, 2, image_angle, image_blend, image_alpha);
draw_text_transformed(32 + 50 , 45, global.key, 1.5, 1.5, image_angle);

// hp
draw_healthbar(100, 100, 500, 120, obj_player.myStats.hp, c_black, c_red, c_lime, 2, true, true);