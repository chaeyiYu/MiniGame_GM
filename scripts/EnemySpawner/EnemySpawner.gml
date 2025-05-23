

function SelectRandomPos(_minX, _maxX, _minY, _maxY) {
	randomX = irandom_range(_minX, _maxX);
	randomY = irandom_range(_minY, _maxY);
	return [randomX, randomY];
}


function SpawnMage() {
var mageArea1 = {
	minX : 256,
	maxX : 430,
	minY : 64,
	maxY : 288
}

var mageArea2 = {
    minX: 1160,
	maxX: 1248,
	minY: 160,
	maxY: 288
};

var pos = SelectRandomPos(mageArea1.minX, mageArea1.maxX, mageArea1.minY, mageArea1.maxY);
instance_create_layer(pos[0], pos[1], global.instanceLayer, obj_enemy_mage);

pos = SelectRandomPos(mageArea2.minX, mageArea2.maxX, mageArea2.minY, mageArea2.maxY);
instance_create_layer(pos[0], pos[1], global.instanceLayer, obj_enemy_mage);


}