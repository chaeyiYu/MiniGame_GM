function ItemBase(_id) constructor {
	Id = _id;
	isRange = false;
	Use = function() {}
}


// Items
function CrossItem(_id) : ItemBase(_id) constructor {
	isRange = false;
	Use = function(_x, _y) {
		var radius = 100;

		var effect = {
			x : _x,
			y : _y,
			isEffectDraw : true,
			rad : radius,
			damaged : false,
			delay : 60 * 5,
			sprite: spr_item_cross,
			Damage : function() {
				with (obj_enemy_parent_abs) {
					if (point_in_circle(x, y, other.x, other.y, other.rad)) {
						Slow();
						other.damaged = true;
						PlaySfx(snd_monster_hit);
					}
				}
				
				
			}
			
		}
		array_push(global.itemEffects, effect);
	}

}


function AppleItem(_id) : ItemBase(_id) constructor {
	isRange = false;
	Use = function(_x, _y) {

		var effect = {
			x : _x,
			y : _y,
			distance : 500,
			isEffectDraw : false,
			rad : -1,
			damaged : false,
			delay : 60 * 3,
			sprite: spr_item_apple,
			Damage : function() {
				with (obj_enemy_slime_s) {
					targetX = other.x;
					targetY = other.y;
					if (point_distance(x, y, targetX, targetY) <= other.distance) {
						myFsm.ChangeState("itemHit");
					}
					other.damaged = true;
				}
			}
			
		}
		array_push(global.itemEffects, effect);
	}

}