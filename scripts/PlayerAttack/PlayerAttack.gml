
function FirePlayerProj(_owner){
	var dirHorizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dirVertical = keyboard_check(vk_down) - keyboard_check(vk_up);
	var lookDir = 0;
	
	if (dirHorizontal == 0 && dirVertical == 0) {
		dirHorizontal = -_owner.image_xscale;
	}
	
	lookDir = point_direction(0, 0, dirHorizontal, dirVertical);

	var proj = instance_create_layer(_owner.x, _owner.y, global.instanceLayer, obj_proj);
	proj.Init(lookDir, 5, 10);

}