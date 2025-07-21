/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
duration -= delta_time / 1_000_000;
if (duration < 0 || place_meeting(x, y, col)) {
	instance_destroy();
}

// y값이 뭔가 안맞음 
//x += lengthdir_x(speed, dir);
//y += lengthdir_y(speed, dir);