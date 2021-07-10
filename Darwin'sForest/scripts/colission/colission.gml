// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function colission(){
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