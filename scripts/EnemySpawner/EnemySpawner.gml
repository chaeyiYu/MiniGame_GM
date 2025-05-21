

function SelectRandomPos(_minX, _maxX, _minY, _maxY) {
	randomX = irandom_range(_minX, _maxX);
	randomY = irandom_range(_minY, _maxY);
	return [randomX, randomY];
}


function SpawnMage() {
	var mageArea1 = {
	minX : 256,
	maxX : 544,
	minY : 64,
	maxY : 288
}

var mageArea2 = {
	minX: 640,
	maxX: 864,
	minY: 224,
	maxY: 288
}

var mageArea3 = {
    minX: 1088,
	maxX: 1248,
	minY: 160,
	maxY: 288
};
var mageAreaArray = [mageArea1, mageArea2, mageArea3];

	var except = irandom(2);
	
	for	(_i = 0; _i < array_length(mageAreaArray); _i++) {
		if (_i == except) {
			continue;
		}
		
		var pos = SelectRandomPos(mageAreaArray[_i].minX, mageAreaArray[_i].maxX, mageAreaArray[_i].minY, mageAreaArray[_i].maxY);
		instance_create_layer(pos[0], pos[1], global.instanceLayer, obj_enemy_mage);	
	}
}