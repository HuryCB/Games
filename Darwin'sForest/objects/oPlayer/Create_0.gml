
sprite_bbox_top = bbox_top - y;
sprite_bbox_bottom = bbox_bottom - y;
sprite_bbox_right = bbox_right - x;
sprite_bbox_left = bbox_left - x;

walking_spd = 1;
running_spd = 2;
life = 150;
hunger = 150;
sanity = 300;

max_life = 150;
max_hunger = 150;
max_sanity = 300;

atk = 15;


canJump = true;

grav = 0.5;
spd = 1;
jump_height = 4;
hspd = 0 ;
vspd = 0 ;

moveX = 0;


state = STATE.walking;

enum STATE{
	walking ,
	jumping,
	mining
}
//states = {
//	idle : new State (sSteve_idle),
//	walk : new State (sSteve_walking),
//	jumping: new State (sSteve_jumping),
//	mining: new State (sSteve_mining)
//}

//states.mining.StateOnEnd(states.idle);
//states.jumping.StateOnEnd(states.idle);

//state = states.idle;


