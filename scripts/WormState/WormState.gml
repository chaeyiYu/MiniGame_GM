function MoveState_Worm(_owner) : State(_owner) constructor {
	OnEnter = function () {
		owner.SetRangeOfY();
	}
	
	OnUpdate = function() {
		owner.MoveVertical();
	}
}


function AttackState_Worm(_owner) : State(_owner) constructor {
	OnEnter = function() {
		var atkPower = owner.attackPower;
		var enemy = owner;
		
		with(obj_player) {
			Damage(atkPower);
			
			// damage effect
			
			GoToInitPos();
			// alarm ??
			enemy.alarm[0] = 60 * 0.5;
		}
	}

}