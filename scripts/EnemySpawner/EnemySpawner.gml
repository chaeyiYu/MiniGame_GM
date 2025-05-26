
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

function SpawnBoss() {
	var randReal = irandom(3);
	
	for (var i = 0; i < 4; i++) {
		if (i < 3) {
			var pos = SelectRandomPos(64, 320, 768, 1024);
		}
		else {
			var pos = SelectRandomPos(608, 1120, 928, 1024);
		}
		var mon = instance_create_layer(pos[0], pos[1], global.instanceLayer, obj_slimeBoss2);
		
		if (i == randReal) {
			mon.Init(true, 5, 40);
		}
		else {
			mon.Init(false, 2, 20);
		}
	}

}