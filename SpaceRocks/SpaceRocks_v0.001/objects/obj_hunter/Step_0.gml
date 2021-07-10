/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(!instance_exists(obj_ship))exit;


if(point_distance(x,y,obj_ship.x,obj_ship.y)<global.cameraHeight/2){
		//tuyrn to look at player ship
		
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.1);
	
	direction = image_angle;
	
	if(point_distance(x,y,obj_ship.x,obj_ship.y)<global.cameraHeight/6){
		speed -= 0.05;
	}else{
		speed += 0.01;
	}
		
	//speed = speed +0.5;
	//fire a bullet
	bulletCounter++;
	if(bulletCounter >= 40){
		create_bullet(image_angle,3+(speed/2),faction,id);
		bulletCounter = 0;
	}
		
}else{
	speed = lerp(speed,originalSpeed,0.1);
}
//otherwise, n