/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if (point_distance(x, y, obj_player.x, obj_player.y) < disToPlayer) {
	if (!CanOpen()) {
		// play sound
		PlaySfx(snd_door_lock);

		// draw progress 0/3...
		showText = true;
	}
	else {
		PlaySfx(snd_open_door);
		instance_destroy();
	}
}
else {
	showText = false;
}