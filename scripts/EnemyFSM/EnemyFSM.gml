enum EEnemyState {
	idle,
	act,
	chase,
	attack,
	disturbed,
}


enemyType = array_create(10);
enemyType[0] = "mage";


enemyState = array_create(5);
enemyState[0] = "idle";
enemyState[1] = "act";
enemyState[2] = "chase";
enemyState[3] = "attack";
enemyState[4] = "disturbed";


/// @param {enum} 
function EnemyFSM() constructor {
	allStatesOfEnemies = {};  //전체 몬스터 타입과 해당 몬스터의 상태맵
	currentState = undefined;
	
	// change  -- currentState 공유하는 문제
	function ChangeState(_enemyType, _newState) {
		if ( currentState == _newState) {
			return;
		}
		
		if (currentState != undefined) {
			allStatesOfEnemies[$ _enemyType][$ currentState].OnExit();	
		}
		
		currentState = _newState;
		allStatesOfEnemies[$ _enemyType][$ currentState].OnEnter();
	}
	
	// call update
	function Update(_enemyType) {
		if (myStateMap != undefined) {
			return;
		}
		
		allStatesOfEnemies[$ _enemyType][$ currentState].OnUpdate();
	}
	
	
	// each enemies register stateMap
	function Register(_enemyType, _stateMap, _initState) {
		if (struct_exists(allStatesOfEnemies, _enemyType) ||
			!struct_exists(_stateMap, _initState)) {
			
			return;
		}
		
		// stateMap 추가
		struct_set(allStatesOfEnemies, _enemyType, _stateMap);
		show_debug_message(struct_names_count(allStatesOfEnemies));
		show_debug_message(allStatesOfEnemies);
		
		// init
		//myStateMap = allStatesOfEnemies[$ _enemyType];
		ChangeState(_enemyType, _initState);
	}
	
	// 해당 몬스터의 stateMap 삭제
	function Delete() {
	}
	
}

/// @desc 
function State() constructor {
	OnEnter = function() {}
	OnUpdate = function() {}
	OnExit = function() {}
}