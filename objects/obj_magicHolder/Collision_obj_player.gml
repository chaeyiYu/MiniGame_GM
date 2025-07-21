/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

if (!isCrushed) {
	isCrushed = true;

	var effect = irandom(2);
	
	switch (effect) {
		case 0:
			other.Heal(irandom(10));
			break;
		case 1:
			other.Damage(irandom(15));
			break;
		case 2:
			other.GoToInitPos();
			break;
	}


	alarm[0] = 60 * 5;
}

