
event_inherited();

if (!instance_exists(obj_player)) {
	exit;
}

if (point_distance(x, y, obj_player.x, obj_player.y) <= attackDistance) {
	myFsm.ChangeState("attack");
}

if (isHit) {
	hitTimer -= 0.1;
	
	if (hitTimer <= 0) {
		isHit = false;
		hitTimer = 1.5;
	}
}

if (isDead) {
	alpha -= 0.1;
	
	if (alpha <= 0) {
		PlaySfx(snd_monster_hit);
		instance_destroy();
	}
}
