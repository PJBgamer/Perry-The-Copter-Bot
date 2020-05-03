enum perry_states {
	idle,//0
	moving,//1
	jump,//2
	flying,//3
	falling//4
}
//Variables
has_control = true;//Does the player have control of Perry?
state = perry_states.idle;//What's Perry doing?
hsp = 0;//Horizontal Speed
vsp = 0;//Vertical Speed
grv = 0.2;//Gravity
walk_sp = 2;//Walking Speed
jump_sp = -5;//Jumping Force
jump_time = 0;//Time to press jump again to start flying.
fly_sp = 1.5;//Flying Speed
firing_delay = 0;//Cooldown
//Animation
perry_idle = sprPerryIdle
perry_run = sprPerryRun
perry_jump = sprPerryJump
perry_fly = sprPerryFly