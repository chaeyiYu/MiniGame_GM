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
			
			// damage effect
			
			GoToInitPos();
			// alarm ??
			enemy.alarm[1] = 60 * 1;
		}
	}

}