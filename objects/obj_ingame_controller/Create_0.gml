/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
randomize();

//texture_debug_messages(true);
//show_debug_overlay(true);  


global.itemCross = new CrossItem("cross");
global.itemApple = new AppleItem("apple");
global.itemEffects = [];
global.myItems = [];
global.myItemsSprite = {
	"cross" : spr_item_cross,
	"apple" : spr_item_apple,
}

global.key = 0;
global.maxKey = 5;

global.wallLayer = layer_tilemap_get_id("Tiles_Wall");
global.waterlayer = layer_tilemap_get_id("Tiles_Water");
global.instanceLayer = layer_get_id("Instances");
global.structLayer = layer_get_id("Instances_structure");

enum eResult {
	none,
	clear,
	over,
}
global.gameResult = eResult.none;

// 시작할 때 생성
SpawnMage();
SpawnKeyOf1Phase(1175, 1408, 168, 64, 1);
SpawnKeyOf1Phase(1320, 1505, 248, 304, 2);
