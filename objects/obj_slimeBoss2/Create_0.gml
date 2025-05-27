/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
event_inherited();

isReal = false;
heart = 0;

projSpeed = 8;
hitTimer = 1.5;
isHit = false;
isDead = false;
alpha = 1;

function FireProjectile() {
	var proj = instance_create_layer(x, y, global.instanceLayer, obj_slimeProjectile);
	proj.Init(point_direction(x, y, obj_player.x, obj_player.y), projSpeed, attackPower);
	PlaySfxOverlap(snd_item_use);
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
	
	if (heart % 2 == 0 && heart != 0) {
		var poison = instance_create_layer(x, y, global.instanceLayer, obj_poison);
		poison.Init(attackPower/2);
	}

	if (heart <= 0) {
		instance_create_layer(x, y, global.instanceLayer, obj_Key);
		KillEveryBossMon();
	}
}

function DamageFake() {
	attackPower -= 5;
	projSpeed -= 2;
	heart -= 1;
	isHit = true;
	
	PlaySfx(snd_monster_hit);

	if (heart <= 0) {
		var key = instance_create_layer(x , y , global.instanceLayer, obj_proj_charge_potion);
		isDead = true;
	}
}

InitState();