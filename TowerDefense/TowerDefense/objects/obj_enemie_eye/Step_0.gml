/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(Atacou == true && !(point_distance(x,y,obj_char.x,obj_char.y)<300)){

			Atacou = false;
			speed = 3;
			colidivel = true;
			image_xscale = - image_xscale;
}else if(Atacou == true && (point_distance(x,y,obj_char.x,obj_char.y)<300)){

	
			image_xscale = - image_xscale;
}


//image_index = ;
image_speed = 0.0005*self.speed;
