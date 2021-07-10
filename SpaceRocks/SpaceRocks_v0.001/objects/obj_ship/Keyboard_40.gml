/// @description Insert description here
// You can write your code in this editor
if(keyboard_check(vk_down)){	
	speed = clamp(speed,-3,3);
	if(keyboard_check(vk_up)){		
		speed = 0;
	}
	
	if(speed<=3 && speed >=-3){
		motion_set(image_angle,speed-0.07);
	}
	else{
		speed = speed + 0.08;
		motion_set(image_angle,speed-0.07);
	}	
}