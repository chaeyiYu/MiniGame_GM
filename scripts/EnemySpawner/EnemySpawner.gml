

function SelectRandomPos(_minX, _maxX, _minY, _maxY) {
	randomX = irandom_range(_minX, _maxX);
	randomY = irandom_range(_minY, _maxY);
	return [randomX, randomY];

}


function SpawnMage() {
	var minX = 256;
	var maxX = 600;
	var minY = 64;
	var maxY = 288;
	
	randomize();
	var pos = SelectRandomPos(minX, maxX, minY, maxY);
	
	instance_create_layer(pos[0], pos[1], global.instanceLayer, obj_enemy_mage);
	
	minX = 1088;
	maxX = 1248;
	minY = 160;
	
	var pos1 = SelectRandomPos(minX, maxX, minY, maxY);
	instance_create_layer(pos1[0], pos1[1], global.instanceLayer, obj_enemy_mage);
}