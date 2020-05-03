enum enemy_states {
	idle,//0
	wander,//1
	alert,//2
	attack//3
}
state = enemy_states.idle;
time = 0;
spd = 0.5;
move_direction = irandom_range(0,359);
move_x = lengthdir_x(spd,move_direction);
move_y = lengthdir_y(spd,move_direction);
hp = 2;
flash = 0;