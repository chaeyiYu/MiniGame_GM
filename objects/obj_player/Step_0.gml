/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (canMove) {
	WalkOrRun();
}
myStats.RecoverHp();

// 달리면 스태미나 소모
// 걷거나 멈추면 충전
if (currentMoveP == EPlayerMoveStatus.run) {
	myStats.UseStamina(staminaDrainRate);
}
else {
	myStats.RecoverStamina(staminaRegenRate);
}

myStats.CheckTired();
if (currentStmP == EPlayerStmStatus.exhausted) {
	// 2초동안 멈춤
	canMove = false;
	currentMoveP = EPlayerMoveStatus.stop;
	var _sec = delta_time / 1_000_000;
	exhaustedElapsed += _sec;

	show_debug_message($"{exhaustedElapsed} timer moya");
	if (exhaustedElapsed > exhaustedTimer) {
		canMove = true;
		currentStmP = myStats.SetStmStatus();
		exhaustedElapsed = 0.0;
		show_debug_message($"{canMove} canMove true");
		show_debug_message($"{currentStmP} current stamina status");
	}
}

// 피격 시 점멸 효과
if (isHit) {
	hitTimer -= 0.1;
	if (hitTimer <= 0) {
		hitTimer = 1.5;
		isHit = false;
	}
}

//show_debug_message(currentStmP);
