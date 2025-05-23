
function SpawnKeyOf1Phase(_xMin, _xMax, _yMin, _yMax, _index){
	var pos = SelectRandomPos(_xMin, _xMax, _yMin, _yMax);
	var key = instance_create_layer(pos[0], pos[1], global.instanceLayer, obj_Key);
	key.keyIndex = _index;
}

function SpawnSoundDistraction() {
	
}