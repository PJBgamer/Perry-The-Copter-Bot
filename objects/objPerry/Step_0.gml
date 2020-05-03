show_debug_message(jump_time);
//Physics
move_left = global.objControlId.pad_left;
move_right = global.objControlId.pad_right;
var move = move_right - move_left;
hsp = move * walk_sp;
vsp += grv;
if place_meeting(x,y+1,objBlock) && global.objControlId.button_jump {
	vsp = jump_sp;
}
//Horizontal Collision
if place_meeting(x+hsp,y,objBlock) {
	while !place_meeting(x+sign(hsp),y,objBlock) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;
//Vertical Collision
if place_meeting(x,y+vsp,objBlock) {
	while !place_meeting(x,y+sign(vsp),objBlock) {
		y += sign(vsp);
		state = perry_states.falling;
	}
	vsp = 0;
	jump_time = 0;
	state = perry_states.idle;
}
y += vsp;
//Shooting
firing_delay -= 1;
if global.objControlId.button_shoot = true && firing_delay < 0 {
	firing_delay = 10;
	with instance_create_layer(x,y,"Projectiles",objPerryShot) {
		speed = 5 * objPerry.image_xscale;
		image_xscale = sign(speed)
	}
}
//Animation
if global.objControlId.button_shoot = true perry_idle = sprPerryShoot
else perry_idle = sprPerryIdle
if !place_meeting(x,y+1,objBlock) {
	state = perry_states.jump;
	jump_time += 1;
	sprite_index = perry_jump;
	image_speed = 0;
	if sign(vsp) > 0 {
		image_index = 1;
		state = perry_states.falling;
	}
	else image_index = 0;
}
else {
	image_speed = 1;
	if hsp == 0 sprite_index = perry_idle;
	else sprite_index = perry_run;
}
if hsp !=0 image_xscale = sign(hsp);

if state = perry_states.jump || perry_states.falling && global.objControlId.button_jump && jump_time < 10 state = perry_states.flying
//Flying
if state = perry_states.flying {
	jump_time = 0;
	grv = 0;
	hsp *= 0.9;
	vsp *= 0.9;
	sprite_index = perry_fly;
	image_speed = 1;
}