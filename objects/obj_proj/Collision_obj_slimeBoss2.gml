/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var isReal = other.isReal;

if (isReal) {
	other.DamageReal();
}
else {
	other.DamageFake();
	show_debug_message("fake~~~~~~~~~~~~~");
}

instance_destroy();