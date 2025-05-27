/// @description 이동관련 함수 정의 
// 이 에디터에 코드를 작성할 수 있습니다

function WalkOrRun() {
	if (keyboard_check(vk_shift)){
		currentMoveP = EPlayerMoveStatus.run;
		
		// stamina 상태에 따른 달리기 속도 설정
		if (currentStmP == EPlayerStmStatus.normal) {
			myStats.SetMoveSpeed(originSpeed * 1.5);
		}
		else {
			myStats.SetMoveSpeed(originSpeed * 1.2);
		}
	}
	else {
		currentMoveP = EPlayerMoveStatus.walk;
		myStats.SetMoveSpeed(originSpeed);
	}
	Move();
}
