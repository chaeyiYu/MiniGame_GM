function InitTimer(_owner) {
	if (variable_instance_exists(_owner.id, timer)) {
		timer = 0;
	}
	else {
		return;
	}
}

function SetAlarm(_owner, _index = 0) {
	_owner.alarm[_index] = 60;
}

function RemoveAlarm(_owner, _index = 0) {
	_owner.alarm[_index] = -1;
}

// 함수 보류
function ActUpdate(_owner, _delayTime, _newState, _alarmIndex = 0) {
	if (object_get_parent(_owner) != obj_enemy_parent_abs) {
		return;
	}
	
	with (_owner) {
	if (timer > _delayTime) {
		alarm[_alarmIndex] = -1;
		myFsm.ChangeState(_newState);
	}

	alarm[_alarmIndex] = 60;
	}
	
}


// ============ watch ============
function WatchState_Mage() : State() constructor {
	var duration = random_range(2.0, 5.0);
	var isReached = false;
	
	OnEnter = function() {
		with (obj_enemy_lv1) {
			alarm[0] = 1;
		}
	}
	
	OnUpdate = function() {
		with (obj_enemy_lv1) {
			if (timer > other.watchTime) {
				myFsm.ChangeState("move");
				return;
			}
			
			timer += delta_time;
			show_debug_message(timer);
			show_debug_message("in watch update");
		}
	}
	
	OnExit = function() {
		with (obj_enemy_lv1) {
			alarm[0] = -1;
			timer = 0;
		}
	}
}


// ========== move ===========
function PatrolState_Mage() : State() constructor {
	OnEnter = function() {
		with (obj_enemy_lv1) {
			alarm[0] = 1;
		}
	}

	OnUpdate = function() {
		with (obj_enemy_lv1) {
			EnemyMoveBase();
		}
	}
	
	OnExit = function() {
		with (obj_enemy_lv1) {
			alarm[0] = -1;	
		}
	}
}

function ChaseState_Mage() : State() constructor {
	originValue = 1;
	
	OnEnter = function() {
		with (obj_enemy_lv1) {
			other.originValue = moveSpeed;
			moveSpeed *= 3;
		}
	}
	
	OnUpdate = function() {
		with (obj_enemy_lv1) {
			EnemyMoveBase();
			show_debug_message("chase update");
		}
	}
	
	OnExit = function() {
		with (obj_enemy_lv1){
			moveSpeed = other.originValue;
		}
	}
}

function AttackState_Mage() : State() constructor {
	
}