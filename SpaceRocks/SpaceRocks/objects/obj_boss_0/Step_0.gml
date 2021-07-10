/// @description Insert description here
// You can write your code in this editor
if(HP>1)image_index = (HP-2)/2;
else image_index = 0;

if(!instance_exists(obj_ship))exit;

if(point_distance(x,y,obj_ship.x,obj_ship.y)<10000){
		//tuyrn to look at player ship		
			
//	if(speed == 50) speed = originalSpeed;
	
	speed = clamp(speed,-4,4);
	var new_angle = point_direction(x,y,obj_ship.x,obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle,new_angle);
	image_angle = lerp(image_angle,new_angle,0.09);
	
	direction = image_angle;
	
	if(speed<4){
		motion_add(image_angle,0.076);
	}
	//speed = 1 + obj_ship.speed;
	
		
}else if(!point_distance(x,y,obj_ship.x,obj_ship.y)<10000){
	//speed = lerp(speed,originalSpeed,0.1);
	speed = 50;
}

if(point_in_rectangle(x,y,global.cameraX,global.cameraY,
global.cameraX+global.cameraWidth,
global.cameraY+global.cameraHeight))
{	
	if(!alarm[0]){
		alarm[0] = 2 * room_speed;
	}
	if(!alarm[1]){
		alarm[1]  = 4 *room_speed;
	}
	
	bulletCounter++;
	if(bulletCounter >= 35){
		//create_bullet(image_angle,bulletSpd,faction,id,guns,1);
		speedDaNave = ((((obj_ship.speed)^2)+1)/(obj_ship.speed+1));
		if(speedDaNave > 16 || speedDaNave <0){
			speedDaNave = 0;
		}
		create_bullet(image_angle,speedDaNave+5,40,id,-1,1);

		bulletCounter = 0;				
	}
}
