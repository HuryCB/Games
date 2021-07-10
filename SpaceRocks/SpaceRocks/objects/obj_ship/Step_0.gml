/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_left)){
	image_angle = image_angle +6;
}

if(keyboard_check(vk_right)){
	image_angle = image_angle -6;	
}

if(keyboard_check_pressed(vk_up)){

	if(tempoDash == 1 && tempoDashIsAllowed == 1){
		x= x+lengthdir_x(48,image_angle);
		y = y+lengthdir_y(48,image_angle);
		tempoDashIsAllowed = 0;
		//instance_create_layer(x,y,"Instances",obj_ship);
		//alarm[5] = 1.5*room_speed;
		//alarm[4] = 4 * room_speed;
		alarm[3] = 1.5*room_speed;
	}else{
		tempoDash = 1;
	}
	alarm[4]= 0.5*room_speed;
}

if(keyboard_check(vk_up)){

	speed = clamp(speed,-3,3);
	if(speed<3){
		motion_add(image_angle,0.077);
	}
	else{
		speed = speed - 0.08;
		motion_add(image_angle,0.07);
	}
	
	
	exhaustCounter++;
	
	if(exhaustCounter >= 4){
		exhaustCounter = 0;
		var len = sprite_height*.4,
		var _xx = x - lengthdir_x(len,image_angle),
		var _yy = y - lengthdir_y(len,image_angle);
		with(obj_particles){
			part_particles_create(partSys,_xx,_yy, partTypeExhaust,1);
		}
	}
}

if(keyboard_check(vk_down)){	
	speed = clamp(speed,-3,3);
	if(keyboard_check(vk_up)){		
		speed = 0;
	}
	
	if(speed<3 && speed >-3){
		motion_set(image_angle,speed-0.07);
	}
	else{
		speed = speed + 0.08;
		motion_set(image_angle,speed-0.07);
	}	
}

if(keyboard_check_pressed(vk_space)){ 
	 create_bullet(image_angle,bulletSpd,faction,id,guns,1);
	 exit;
}

////move_wrap(true,true,sprite_height/2);