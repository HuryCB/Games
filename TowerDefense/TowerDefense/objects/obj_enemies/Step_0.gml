/// @description Insert description here
// You can write your code in this editor


if(!instance_exists(obj_char))exit;

image_speed = 0.0005*self.speed;
speed = clamp(speed,-6,6);
	
if(Atacou == false){
	motion_add(image_angle,0.007);
	
	var new_angle = point_direction(x,y,obj_char.x,obj_char.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	
	image_angle = lerp(image_angle, new_angle, 0.1);
	
	direction = image_angle;
	
}

	
if(obj_char.x<x){
	
	image_xscale =  viradoDireita;
	
}else if (obj_char.x>x){
	
	image_xscale =  viradoDireita;
}