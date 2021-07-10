/// @description Insert description here
// You can write your code in this editor
if(Atacou == false){	
	direction = point_direction(x,y,obj_char.x,obj_char.y);
}

if(Atacou == true && !(point_distance(x,y,obj_char.x,obj_char.y)<300)){

			Atacou = false;
			speed = 3;
			colidivel = true;
			image_xscale = - image_xscale;
}else if(Atacou == true && (point_distance(x,y,obj_char.x,obj_char.y)<300)){

	
			image_xscale = - image_xscale;
}
