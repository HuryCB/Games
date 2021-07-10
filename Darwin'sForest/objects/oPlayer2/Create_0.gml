//spd  = 2;
sprite_bbox_top = bbox_top - y;
sprite_bbox_bottom = bbox_bottom - y;
sprite_bbox_right = bbox_right - x;
sprite_bbox_left = bbox_left - x;

walking_spd = 1;
running_spd = 1.15;
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
jspd = 4;
hspd = 0 ;
vspd = 0 ;

xScale = image_xscale;
yScale = image_yscale;
iAlpha = image_alpha;

enum PLAYER{
	idle, running, jumping, attacking
}

STATE = PLAYER.idle;

