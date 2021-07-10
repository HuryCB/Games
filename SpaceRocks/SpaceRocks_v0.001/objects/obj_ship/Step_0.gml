/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_up)){

	if(tempoDash == 1 && tempoDashIsAllowed == 1){
		x= x+lengthdir_x(48,image_angle);
		y = y+lengthdir_y(48,image_angle);
		var len = sprite_height*.8,
		var _xx = x - lengthdir_x(len,image_angle),
		var _yy = y - lengthdir_y(len,image_angle);
		with(obj_particles){
		part_particles_create_colour(partSys,_xx,_yy, partTypeShipDash,c_aqua,2);
		}
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
		var len = sprite_height,
		var _xx = x - lengthdir_x(len,image_angle),
		var _yy = y - lengthdir_y(len,image_angle);
		with(obj_particles){
			part_particles_create(partSys,obj_ship.x,obj_ship.y, partTypeExhaust,2);
			part_type_direction(partTypeShipDash,0,obj_ship.direction,0,false);
			part_type_orientation(partTypeShipDash,0,obj_ship.direction,0,false,true);
			part_type_speed(partTypeShipDash,obj_ship.speed,2.4,-0.02,0);
			
		}		
	}
}


move_wrap(true,true,sprite_height/4);
