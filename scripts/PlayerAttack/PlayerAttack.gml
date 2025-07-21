

function FirePlayerProj(_owner){
	if (_owner.currentProjectile <= 0) {
		show_debug_message("no projectile!!!!!!");
		
		obj_ingame_controller.CheckGameOver(_owner);
		return;
	}
	var dirHorizontal = keyboard_check(vk_right) - keyboard_check(vk_left);
	var dirVertical = keyboard_check(vk_down) - keyboard_check(vk_up);
	var lookDir = 0;
	
	if (dirHorizontal == 0 && dirVertical == 0) {
		dirHorizontal = -_owner.image_xscale;
	}
	
	lookDir = point_direction(0, 0, dirHorizontal, dirVertical);

	var proj = instance_create_layer(_owner.x, _owner.y, global.instanceLayer, obj_playerprojetile);
	proj.Init(lookDir, 5, 10);
	_owner.currentProjectile--;
	
	PlaySfxOverlap(snd_item_use);

}

function ChargeProjectile(_owner) {
	_owner.currentProjectile += _owner.maxProjectile;
	show_debug_message(_owner.currentProjectile);
}