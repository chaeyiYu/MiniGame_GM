function ItemBase(_id) constructor {
	Id = _id;
	Use = function() {}
}


// Items
function CrossItem(_id) : ItemBase(_id) constructor {
	Use = function(_x, _y) {
		var radius = 100;
		
		show_debug_message("use~~~~~~item crossitem");

		var effect = {
			x : _x,
			y : _y,
			isEffectDraw : true,
			radius : radius,
			damaged : false,
			delay : 60 * 5,
			sprite: spr_item_cross,
			Damage : function() {
				with (obj_enemy_parent_abs) {
					if (point_in_circle(x, y, other.x, other.y, other.radius)) {
						Slow();
						other.damaged = true;
					}
				}
			}
			
		}
		array_push(global.itemEffects, effect);
	}

}


function AppleItem(_id) : ItemBase(_id) constructor {
	Use = function(_x, _y) {

		var effect = {
			x : _x,
			y : _y,
			distance : 500,
			isEffectDraw : false,
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
				}
			}
			
		}
		array_push(global.itemEffects, effect);
	}

}