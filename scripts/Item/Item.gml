function ItemBase(_id) constructor {
	Id = _id;
	Use = function() {}
}


// Items
function CrossItem(_id) : ItemBase(_id) constructor {
	Use = function(_x, _y) {
		var radius = 100;
		
		show_debug_message("use~~~~~~item");

		var effect = {
			x : _x,
			y : _y,
			radius : radius,
			damaged : false,
			delay : 60 * 5,
			sprite: spr_item_cross,
			Damage : function() {
				with (obj_enemy_parent_abs) {
					if (point_in_circle(x, y, other.x, other.y, other.radius)) {
						Slow();
						other.damaged = true;
					show_debug_message($"after slow : {moveSpeed}");
					}
				}
			}
			
		}
		array_push(global.itemEffects, effect);
	}

}