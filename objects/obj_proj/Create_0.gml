/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
dir = 0;
attackPower = 0;
duration = 2;

col = [global.wallLayer, global.shelterLayer];

function Init(_dir, _speed, _attackPower) {
	dir = _dir;
	hspeed = lengthdir_x(_speed, dir);
	vspeed = lengthdir_y(_speed, dir);
	
	attackPower = _attackPower;
}