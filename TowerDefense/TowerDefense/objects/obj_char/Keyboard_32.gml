/// @description Insert description here
// You can write your code in this editor
if(canCreate == true && global.coins >=10){
	
	if instance_place(obj_char.x+obj_char.sprite_width/2,obj_char.y+obj_char.sprite_height/2, obj_turret) == noone{
		
		instance_create_layer(obj_char.x+obj_char.sprite_width/2,obj_char.y+obj_char.sprite_height/2,"camada2",obj_turret);
		global.coins -=20;
	}	
	canCreate = false;
	alarm[0] = 1 *room_speed;
}