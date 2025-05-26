/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

global.itemCross = new CrossItem("cross");
global.itemApple = new AppleItem("apple");
global.itemPoison = new PoisonItem("poison");

global.itemEffects = [];
global.myItems = [];
global.myItemsSprite = {
	"cross" : spr_item_cross,
	"apple" : spr_item_apple,
	"poison" : spr_item_poison,
}