/// @description Insert description here
// You can write your code in this editor
if(canCreate == true && global.coins >=10){
	
	if instance_place(mouse_x,mouse_y, obj_turret) == noone{
		
		instance_create_layer(mouse_x,mouse_y,"camada2",obj_turret);
		global.coins -=20;
	}	
	canCreate = false;
	alarm[0] = 1 *room_speed;
}