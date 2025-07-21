/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
isDrawed = false;
var sizeDiv = 10;

surfMinimapBg = -1;
surfMinimap = -1;

roomWidth = 1600;
roomHeight = 1080;

w = roomWidth / sizeDiv;
h = roomHeight / sizeDiv;
x = 6;
y = 6;

function RefreshBG() {
	surfMinimapBg = surface_create(w, h);
	
	var surfTemp = surface_create(roomWidth, roomHeight);
	surface_set_target(surfTemp);
	draw_clear(c_black);
	draw_tilemap(global.wallLayer, 0, 0);
	surface_reset_target();
	
	surface_set_target(surfMinimapBg);
	draw_surface_stretched(surfTemp, 0, 0, w, h);
	surface_reset_target();
	surface_free(surfTemp);
}