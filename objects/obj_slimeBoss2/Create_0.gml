/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
event_inherited();

isReal = false;
heart = 0;

projSpeed = 10;
hitTimer = 1.5;
isHit = false;

function FireProjectile() {
	var proj = instance_create_layer(x, y, global.instanceLayer, obj_slimeProjectile);
	proj.Init(point_direction(x, y, obj_player.x, obj_player.y), projSpeed, attackPower);
}

function InitState() {
	moveStateSlimeBoss2 = new MoveState_SlimeBoss2(self);
	attackStateSlimeBoss2 = new AttackState_SlimeBoss2(self);
	
	// state 이름과 객체 매핑
	slimeBoss2StateMap = {
	"move" : moveStateSlimeBoss2,
	"attack" : attackStateSlimeBoss2,
	}
	
	myFsm.Register(slimeBoss2StateMap, "move");
}

function Init(_isReal, _heart, _attackPower) {
	isReal = _isReal;
	heart = _heart;
	attackPower = _attackPower;
}


function DamageReal() {
	attackPower -= 5;
	heart -= 1;
	isHit = true;
	PlaySfx(snd_monster_hit);
	
	if (heart == 3) {
		// create posion??
	}

	if (heart <= 0) {
		// create dead effect
		instance_create_layer(x + irandom(100), y + irandom(80), global.instanceLayer, obj_Key);
		instance_destroy();
	}
}

function DamageFake() {
	attackPower -= 5;
	projSpeed -= 2;
	heart -= 1;
	isHit = true;
	
	PlaySfx(snd_monster_hit);

	if (heart <= 0) {
		// create dead effect
		var key = instance_create_layer(x + irandom(100), y + irandom(80), global.instanceLayer, obj_item_poison);
		instance_destroy();
	}
}

InitState();