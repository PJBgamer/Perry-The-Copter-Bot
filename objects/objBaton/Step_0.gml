if state = enemy_states.idle {
	#region idle
	time += 1;
	if time >= room_speed * 3 {
		var change_state = choose(0,1);
		switch change_state {
			case 0: state = enemy_states.wander;
			case 1: time = 0; break;
		}
	}
	if collision_circle(x,y,64,objPerry,false,false) {
		state = enemy_states.alert;
	}
	#endregion
}
else if state = enemy_states.wander {
	#region wander
	time += 1;
	x += move_x;
	y += move_y;
	if time >= room_speed * 3 {
		var change = choose(0,1);
		switch change {
			case 0: state = enemy_states.idle
			case 1:
				move_direction = irandom_range(0,359);
				move_x = lengthdir_x(spd,move_direction);
				move_y = lengthdir_y(spd,move_direction);
				time = 0;
		}
	}
	if collision_circle(x,y,64,objPerry,false,false) {
		state = enemy_states.alert;
	}
	image_xscale = sign(move_x);
	#endregion
}
else if state = enemy_states.alert {
	#region alert
	instance_create_layer(x,y,"Characters",objSurprise);
	image_xscale = sign(move_x);
	time += 1;
	if time >= room_speed state = enemy_states.attack;
	#endregion
}
else if state = enemy_states.attack {
	#region attack
	move_direction = point_direction(x,y,objPerry.x,objPerry.y);
	move_x = lengthdir_x(spd,move_direction);
	move_y = lengthdir_y(spd,move_direction);
	x += move_x;
	y += move_y;
	if !collision_circle(x,y,64,objPerry,false,false) {
		state = enemy_states.idle;
	}
	image_xscale = sign(move_x);
	#endregion
}
if hp = 0 {
	instance_create_layer(x,y,"Characters",objExplosion);
	instance_destroy();
}