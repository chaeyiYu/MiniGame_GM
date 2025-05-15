/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// 시작할 때 플레이어 생성 / 랜덤
//texture_debug_messages(true);
show_debug_overlay(true);    

global.itemCross = new CrossItem("cross");
global.itemApple = new AppleItem("apple");
global.itemEffects = [];

global.key = 0;
global.maxKey = 5;

global.tileCollider = layer_tilemap_get_id("Tiles_Wall");
global.waterlayer = layer_tilemap_get_id("Tiles_Water");
global.instanceLayer = layer_get_id("Instances");
global.structLayer = layer_get_id("Instances_structure");

SpawnMage();