/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (array_length(myItems) > 0) {
	var ex = instance_nearest(x, y, obj_enemy_parent_abs).x;
	var ey = instance_nearest(x, y, obj_enemy_parent_abs).y;
	var dir = point_direction(x, y, ex, ey);
	myItems[0].Use(x, y);
	array_delete(myItems, 0, 1);
}