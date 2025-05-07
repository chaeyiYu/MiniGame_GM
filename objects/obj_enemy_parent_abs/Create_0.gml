/// @description 여기에 설명 삽입
enum EStateType {
	act = 0,
	detect,
	attack,
	disturbed,
}



currentState = EStateType.act;

targetX = x;
targetY = y;

tileCollision = layer_tilemap_get_id("Tiles_Wall");

alarm[0] = 60;