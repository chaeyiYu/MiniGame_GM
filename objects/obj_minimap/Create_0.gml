/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var sizeDiv = 8;

surfMinimapBg = -1;
surfMinimap = -1;

w = room_width / sizeDiv;
h = room_height / sizeDiv;
x = 15;
y = 50;

function RefreshBG() {
	surfMinimapBg = surface_create(w, h);
	
	var surfTemp = surface_create(room_width, room_height);
	surface_set_target(surfTemp);
	draw_clear(c_black);
	draw_tilemap(global.tileCollider, 0, 0);
	surface_reset_target();
	
	surface_set_target(surfMinimapBg);
	draw_surface_stretched(surfTemp, 0, 0, w, h);
	surface_reset_target();
	surface_free(surfTemp);
}

RefreshBG();