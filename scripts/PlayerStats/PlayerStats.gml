
function Struct_PlayerStats(_hp, _speed, _recovery, _recoverDelay, _stamina, _recoveryStamina) constructor {
	hp = _hp;
	maxHp = _hp;
	
	stamina = _stamina;
	maxStamina = _stamina;
	recoveryStamina = _recoveryStamina;
	stmRecoverCoeff = 0.3;
	
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
	
	function RecoverHp() {
		if (!CanRecoverHp() || self.hp >= self.maxHp) {
			return;
		}
		
		var _sec = delta_time / 1_000_000;
		self.hp = min(self.hp + self.recovery * self.recoverCoeff * _sec, self.maxHp);
	}
	
	function CanRecoverHp() {
		var _elapsed = current_time / 1000 - self.lastHitTime;
		return _elapsed >= self.recoverDelay;
	}
	
	function UseStamina(_amount) {
		var _sec = delta_time / 1_000_000;
		self.stamina = max(self.stamina - _amount * _sec, 0);
	}
	
	function IsExhausted() {
		if (self.stamina <= 5.0) {
			obj_player.currentStatusP = EPlayerStatus.exhausted;
		}
	}
	
	function IsTired() {
		return self.stamina <= 30.0;
	}
	
	function RecoverStamina(_amount) {
		var _sec = delta_time / 1_000_000;
		self.stamina = min(self.stamina + _amount * stmRecoverCoeff * _sec, self.maxStamina);
	}
	
}