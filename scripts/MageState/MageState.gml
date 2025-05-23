function PatrolState_Mage(_owner) : State(_owner) constructor {
	OnEnter = function() {
		owner.alarm[0] = 1;
	}

	OnUpdate = function() {
		owner.EnemyMoveBase();
	}
	
}

function ChaseState_Mage(_owner) : State(_owner) constructor {
	originValue = 1;
	
	OnEnter = function() {
		owner.alarm[0] = -1;
		owner.SetTarget(obj_player);

		originValue = owner.moveSpeed;
		owner.moveSpeed *= 2;
	}
	
	OnUpdate = function() {
		owner.EnemyMoveBase();
	}
	
	OnExit = function() {
		owner.moveSpeed = originValue;
	}
}

function AttackState_Mage(_owner) : State(_owner) constructor {
	OnEnter = function() {
		var atkPower = owner.attackPower;
		var enemy = owner;
		with(obj_player) {
			Damage(atkPower);
			
			// player를 시작 위치로 보내는 알람(GoToInitPos())
			alarm[2] = 60 * 0.3;
			
			// patrol state로 변경하는 알람
			enemy.alarm[1] = 60 * 1;
		}
	}

}

function DamageByCrossItem_Mage(_owner) : State(_owner) constructor {
	// originSpeed를 변경
}