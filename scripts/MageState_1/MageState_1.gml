// ========== move ===========
function PatrolState_Mage1(_owner) : State(_owner) constructor {
	OnEnter = function() {
		owner.alarm[0] = 1;
	}

	OnUpdate = function() {
		owner.EnemyMoveBase();
	}
	
	//OnExit = function() {
	//	with (obj_enemy_lv1) {
	//		alarm[0] = -1;	
	//	}
	//}
}

function ChaseState_Mage1(_owner) : State(_owner) constructor {
	originValue = 1;
	
	OnEnter = function() {
		originValue = owner.moveSpeed;
		owner.moveSpeed *= 1.5;
	}
	
	OnUpdate = function() {
		owner.EnemyMoveBase();
		show_debug_message("chase update");
		
	}
	
	OnExit = function() {
		owner.moveSpeed = originValue;
	}
}

function AttackState_Mage1(_owner) : State(_owner) constructor {
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
		show_debug_message("attack enter");
	}

}