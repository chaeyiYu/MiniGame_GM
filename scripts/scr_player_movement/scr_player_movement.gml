 function Move() {
	var dirHorizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dirVertical = keyboard_check(vk_down) - keyboard_check(vk_up);
	
	with (obj_player) {
	if (dirHorizontal != 0 || dirVertical != 0) {
		var dir = point_direction(0, 0, dirHorizontal, dirVertical);
		var xAdd = lengthdir_x(mySpeed, dir);
		var yAdd = lengthdir_y(mySpeed, dir);
		x += xAdd;
		y += yAdd;
	}
}
	
}

function WalkOrRun() {
	if (keyboard_check(vk_shift)){
		obj_player.mySpeed = 5;
	}
	else {
		obj_player.mySpeed = 3;
	}
	Move();
}

