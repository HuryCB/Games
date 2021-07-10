/// @description Insert description here
// You can write your code in this editor
//if player is inside range
//if player exists
event_inherited();
if(!instance_exists(obj_ship))exit;


if(point_distance(x,y,obj_ship.x,obj_ship.y)<250){
		//tuyrn to look at player ship
		
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.1);
	//speed = speed +0.5;
	//fire a bullet
	bulletCounter++;
	if(bulletCounter >= 60){
		create_bullet(image_angle,3,faction,id);
		bulletCounter = 0;
	}
		
}else{
	image_angle = lerp(image_angle,direction,0.1);
}
//otherwise, no change