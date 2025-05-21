/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (canMove) {
	WalkOrRun();
}
myStats.RecoverHp();

// 달리면 스태미나 소모
// 걷거나 멈추면 충전
if (currentStatusP == EPlayerStatus.run) {
	myStats.UseStamina(staminaDrainRate);
}
else {
	myStats.RecoverStamina(staminaRegenRate);
}

myStats.IsExhausted();
if (currentStatusP == EPlayerStatus.exhausted) {
	canMove = false;
	var _sec = delta_time / 1_000_000;
	elapsed += _sec;
	
	if (elapsed > 2.0) {
		canMove = true;
		currentStatusP = EPlayerStatus.stop;
		elapsed = 0.0;
	}
}