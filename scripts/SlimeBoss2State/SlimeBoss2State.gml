function MoveState_SlimeBoss2(_owner) : State(_owner) constructor {
	OnEnter = function() {
		owner.alarm[0] = 1;
	}
	OnUpdate = function() {
		owner.EnemyMoveBase();
	}
}


function AttackState_SlimeBoss2(_owner) : State(_owner) constructor {
	OnEnter = function() {
		owner.FireProjectile();
		
		owner.alarm[1] = 60 * 1;
	}
}