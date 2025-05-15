/// @description 여기에 설명 삽입

for (var i = array_length(global.itemEffects) - 1; i>=0 ; i--) {
	var item = global.itemEffects[i];
	if (!item.damaged) {
		item.Damage();
	}
	
	if (item.delay == -1) {
		array_delete(global.itemEffects, i, 1);
		continue;
	}
	
	item.delay--;
	
	if (item.delay <= 0 || item.damaged) {
		array_delete(global.itemEffects, i, 1);
	}
	
}