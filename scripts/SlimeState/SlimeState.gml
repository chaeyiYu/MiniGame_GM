function IdleState_Slime_s(_owner) : State(_owner) constructor {
}


function AttackState_Slime(_owner) : State(_owner) constructor {
	OnEnter = function() {
		var atkPower = owner.attackPower;
		var enemy = owner;
		
		with(obj_player) {
			Damage(atkPower);
			
			// damage effect
			
			GoToInitPos();
			// alarm ??
			enemy.alarm[0] = 60 * 1;
		}
		show_debug_message("attack enter");
	}

}

function ItemHitState_Slime(_owner) : State(_owner) constructor {
	OnUpdate = function() {
		owner.EnemyMoveBase();
	}

}