
if(mouse_check_button(mb_left)){
	
	//image_angle = lerp(image_angle,random_range(_angle-22.5,_angle+22.5),0.1);
	//image_angle  = random_range(_angle-22.5,_angle+22.5);
	var _angle =  point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)-45;
	
	_angle = random_range(_angle-25,_angle+25);
	//image_angle=lerp(image_angle,_angle,0.1);
	image_angle=_angle;
	x = oPlayer.x;
	y = oPlayer.y;

	//show_debug_message(_angle);
	
//if(mouse_x>oPlayer.x){
//	if(down){
//		image_angle-=3;
//		if(image_angle<-45+_angle){
//		down = false;
//	}
//	}	
//	if(!down){
//		image_angle+=3;
//		if(image_angle>-0+_angle){
//			down = true;
//		}
//	}
//	//if(down){
//	//image_angle -=3;
//	//	if(image_angle==toAngle){
//	//		down = false;
//	//	}
//	//}
//	//if(!down){
//	//	image_angle +=3;
//	//	if(image_angle>=angle){
//	//		down = true;
//	//	}
//	//}
//}else if(mouse_x<=oPlayer.x){
//	if(down){
//		image_angle+=3;
//		if(image_angle>-45+_angle){
//		down = false;
//	}
//	}	
//	if(!down){
//		//instance_destroy();
//		image_angle-=3;
//		if(image_angle<angle+45){
//			down = true;
//		}
//	}
}
else
	{
	instance_destroy();
}

var _inst = instance_position(mouse_x,mouse_y,oBlock);

if(_inst!=noone and point_distance(_inst.x,_inst.y,oPlayer.x,oPlayer.y)<14){
	Mine(id,_inst);	//instance_destroy(_inst);
}


recarga++;
clamp(recarga,0,30);
