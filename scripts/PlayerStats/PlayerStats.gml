function Struct_PlayerStats(_hp, _speed, _recovery, _recoverDelay) constructor {
	hp = _hp;
	maxHp = _hp;
	
	stamina = 50;
	maxStamina = 50;
	
	moveSpeed = _speed;
	
	recovery = _recovery;
	recoverDelay = _recoverDelay;
	recoverTime = 2;
	recoverCoeff = 0.2;
	
	lastHitTime = 0;
	
	// 메소드 필드
	function SetMoveSpeed(_value){
		self.moveSpeed = _value;
	}
	
	function Heal(_amount) {
		self.hp = min(self.hp + _amount, self.maxHp);
	}
	
	function Damage(_amount) {
		self.hp -= _amount;
		self.lastHitTime = current_time / 1000;
		
		if (self.hp <= 0) {
			obj_player.OnDead();
		}
	}
	
	function Recover() {
		if (!CanRecover() || self.hp >= self.maxHp) {
			return;
		}
		
		var _sec = delta_time / 1_000_000;
		self.hp = min(self.hp + self.recovery * self.recoverCoeff * _sec, self.maxHp);
	}
	
	function CanRecover() {
		var _elapsed = current_time / 1000 - self.lastHitTime;
		return _elapsed >= self.recoverDelay;
	}
	
	function UseStamina(_amount) {
		var _sec = delta_time / 1_000_000;
		//self.stamina = max()
	}
}