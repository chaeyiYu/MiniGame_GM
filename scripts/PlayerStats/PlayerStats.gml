global.recoverCoeff = 0.3

function Struct_PlayerStats(_hp, _speed, _recovery, _recoverDelay) constructor {
	// 변수 필드
	self.hp = _hp;
	self.maxHp = _hp;
	self.moveSpeed = _speed;
	self.recovery = _recovery;
	self.recoverDelay = _recoverDelay;
	self.lastHitTime = 0;
	
	// 메소드 필드
	function SetMoveSpeed(_value){
		self.moveSpeed = _value;
	}
	
	function Damage(_amount) {
		self.hp -= _amount;
		self.lastHitTime = current_time / 1000;
		
		if (self.hp <= 0) {
			// call player dead func?
			obj_player.OnDead();
		}
	}
	
	function Recover() {
		if (!CanRecover() || self.hp >= self.maxHp) {
			return;
		}
		
		var _sec = delta_time / 1_000_000;
		self.hp = min(self.hp + self.recovery * global.recoverCoeff * _sec, self.maxHp);
	}
	
	function CanRecover() {
		var _elapsed = current_time / 1000 - self.lastHitTime;
		return _elapsed >= self.recoverDelay;
	}
}