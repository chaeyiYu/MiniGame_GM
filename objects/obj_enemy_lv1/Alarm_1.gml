/// @description watch 또는 move 랜덤 선택

var choice = random_range(0.0, 1.0);

if (choice >= 6.5) {
	myFsm.ChangeState("watch", true);
}
else {
	myFsm.ChangeState("move", true);
}
