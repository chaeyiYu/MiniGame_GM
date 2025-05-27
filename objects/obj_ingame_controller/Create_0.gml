/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
randomize();

global.key = 0;
global.maxKey = 7;

global.wallLayer = layer_tilemap_get_id("Tiles_Wall");
global.shelterLayer = layer_tilemap_get_id("Tiles_Shelter");
global.waterlayer = layer_tilemap_get_id("Tiles_Water");
global.slimelayer = layer_tilemap_get_id("Tiles_Slime");
global.instanceLayer = layer_get_id("Instances");
global.structLayer = layer_get_id("Instances_structure");

enum eResult {
	none,
	clear,
	over,
}
global.gameResult = eResult.none;

fadeOutTime = 2;
w = display_get_gui_width();
h = display_get_gui_height();

function CheckGameOver(_player) {
	if (!instance_exists(obj_proj_charge_potion)) {
		_player. OnDead();
	}
}



// 시작할 때 생성
SpawnMage();
SpawnKeyOf1Phase(1175, 1408, 168, 64, 1);
SpawnKeyOf1Phase(1320, 1505, 248, 304, 2);
