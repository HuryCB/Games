/// @description Insert description here
// You can write your code in this editor
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

input_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
input_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
input_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
input_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

// alter speed
if(input_walk or input_run){
	spd = abs((input_walk*v_spd) - (input_run*r_spd));
}else{
	spd = n_spd;
}

//reset move variables
moveX = 0;
moveY = 0;

//intended movement
moveY = (input_down - input_up) * spd;
moveX = (input_right - input_left) * spd;
//if (moveY == 0){ }

//collision checks
//horizontal

	if(place_meeting(x+moveX, y, obj_collision)){
		repeat(abs(moveX)){
			if(!place_meeting(x+sign(moveX), y, obj_collision)){ x+= sign(moveX); }
else {break;}
}
moveX = 0;
}


//vertical

if(place_meeting(x,y+moveY, obj_collision)){
	repeat(abs(moveY)){
		if(!place_meeting(x,y+sign(moveY), obj_collision)) { y += sign(moveY)}			
		else{break;}
	}
	moveY = 0;
}

//apply movement
x += moveX;
y += moveY;

//warp
var inst = instance_place(x,y,obj_warp);
if(inst != noone){
	room_goto(inst.targetRoom);
	with(obj_game){
		spawnX = inst.targetX;
		spawnY = inst.targetY;
	}
}
/// @description Insert description here
// You can write your code in this editor
/*
var anim_length = 6;
var frame_size = 16;
var anim_speed = 12;
x_frame = 0;
y_frame = 0;

draw_sprite_part(spr_knight_idle, 0, floor(x_frame)*frame_size, y_frame, frame_size, frame_size
,x,y);

if(x_frame <anim_length -1){
	x_frame +=anim_speed/60;
}
else{
	x_frame = 0;
}
//draw_sprite(spr_knight_idle, 0, x, y);
*/