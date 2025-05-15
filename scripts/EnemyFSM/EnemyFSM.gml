
/// @param {enum} 
function EnemyFSM() constructor {
	currentState = undefined;
	stateMap = {}
	
	// change
	function ChangeState(_newState, _allowSameState = false) {
		if (!struct_exists(self.stateMap, _newState)) {
			show_debug_message("state not exist");
			return;
		}
		if (!_allowSameState) {
			if (self.currentState == _newState) {
				return;
			}
		}
		
		if (self.currentState != undefined) {
			self.stateMap[$ self.currentState].OnExit();
		}
		
		self.currentState = _newState;
		self.stateMap[$ self.currentState].OnEnter();
		
		show_debug_message($"{currentState} --- in ChangeState");
	}
	

	function Update() {
		if (struct_names_count(self.stateMap) == 0) {
			return;
		}
		
		self.stateMap[$ self.currentState].OnUpdate();
	}
	
	
	// each enemies register stateMap
	function Register(_stateMap, _initState) {
		if (!struct_exists(_stateMap, _initState)
			|| struct_names_count(self.stateMap) != 0) {  // 이미 초기화 되었다면
			return;
		}
		
		// stateMap 추가
		self.stateMap = _stateMap;

		ChangeState(_initState);
	}
	
	// 해당 몬스터의 stateMap 삭제
	function Delete() {
		
	}
	
}

/// @desc 
function State(_owner) constructor {
	owner = _owner;
	OnEnter = function() {}
	OnUpdate = function() {}
	OnExit = function() {}
}