/// @description Insert description here
// You can write your code in this editor
switch(weapon){
	case 1:
instance_create_layer(obj_char.x,obj_char.y,"Instances",obj_arrow);

global.mymouse_x = mouse_x;
global.mymouse_y = mouse_y;
	break;
	
	case 2:
	instance_create_layer(x,y-10,"camada2",obj_arrow);
	instance_create_layer(x,y+10,"camada2",obj_arrow);
/*			
with (inst)
    {
//    speed = 12;
//	var teste = point_direction(x,y,obj_enemies.x,obj_enemies.y)
 //   direction = teste;
	//image_angle =teste+270;
    }
*/	     

global.mymouse_x = mouse_x;
global.mymouse_y = mouse_y;
	break;
}