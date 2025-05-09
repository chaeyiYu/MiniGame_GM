/// @description 여기에 설명 삽입

if (instance_exists(obj_player) && distance_to_object(obj_player) < detectDistance){
	targetX = obj_player.x;
	targetY = obj_player.y;
	show_debug_message("플 레 이 어 발 견");
}
else
{
	//targetX = random_range(xstart - 200, xstart + 200);
	//targetY = random_range(ystart - 200, ystart + 200);
}



alarm[0] = 60;