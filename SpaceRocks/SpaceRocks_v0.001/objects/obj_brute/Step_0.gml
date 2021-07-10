/// @description Insert description here
// You can write your code in this editor
event_inherited();
image_index = HP -1;

if(!instance_exists(obj_ship))exit;


if(point_distance(x,y,obj_ship.x,obj_ship.y)<global.cameraX){
		//tuyrn to look at player ship
	speed = clamp(speed,-3.5,3.5);
		
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.1);
	
	direction = image_angle;
	

	speed = speed +0.01;

		
}else{
	speed = lerp(speed,originalSpeed,0.1);
}
//otherwise, n