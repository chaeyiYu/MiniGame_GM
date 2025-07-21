/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (array_length(global.myItems) > 0) {
	global.myItems[0].Use(x, y);
	array_delete(global.myItems, 0, 1);
	PlaySfx(snd_item_use);
}