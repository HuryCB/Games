// Inherit the parent event
event_inherited();
canJump--;
colisao();
if(distance_to_object(oPlayer)<32){
	if(oPlayer.x < x and instance_place(x-1,y,oBlock)==noone){
		image_xscale = -1;
		x -=spd;
	}else if(oPlayer.x>x and instance_place(x+1,y,oBlock)==noone){
		image_xscale = 1;
		x += spd;
	}
	jump(id);
	
	x += hspd;
	if place_meeting(x,y,oBlock) {
		var block = instance_place(x+sign(hspd),y,oBlock);
		 if hspd > 0 { //right
			 x = (block.bbox_left-1)-sprite_bbox_right;
		 } else if hspd < 0 { //left
			 x = (block.bbox_right+1)-sprite_bbox_left;
		 }
		hspd = 0;
	}
	
	y += vspd;
	if(place_meeting(x,y,oBlock)){
			var block = instance_place(x,y+sign(vspd),oBlock);
		if vspd > 0{
			y = (block.bbox_top-1)-sprite_bbox_bottom ;
		} else if vspd < 0{
			y = (block.bbox_bottom+1)-sprite_bbox_top;
		} 
		vspd=0;
	}
}



//if (place_meeting(x,y+1,oBlock)){
//		vspd = 0;
//		canJump = 15;
		
//	} else {
//		if(vspd <10){
//			vspd += grav;
//		}		
//	}
//teste = colission();
//if(teste){
	
//}

