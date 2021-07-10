/// @description Insert description here
// You can write your code in this editor

with(other){
	if !pickable{
		if(mouse_check_button(mb_left)and holding = 0){
			holding = 1;
			image_blend = c_green;
			isSelected = true;
			
		
		}
		if(mouse_check_button_released(mb_left)){
			isSelected = false;
			holding = 0;
		}
		 if(mouse_check_button_pressed(mb_right)){
			isSelected = false;
			x = global.oX;
			y = global.oY;
			pickable = true;		
		}
	}
	//instance_destroy();
}

/*
if( place_meeting(x, y, oItem)){
	var inst = instance_place(x,y,oEnemy);
	//if(!inst.pickable){
	//	with(inst){
	//		instance_destroy();
	//	}
	//}
}

