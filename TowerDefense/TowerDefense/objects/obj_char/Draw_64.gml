/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("L")) && status == false{
	status = true;	
}else if keyboard_check_pressed(ord("L")) && status{
	status = false;
}

if(status){
	draw_text(obj_char.x,obj_char.y+obj_char.image_yscale+13, "Weapon: "+string(weapon));
	draw_text(obj_char.x,obj_char.y+obj_char.image_yscale, "Speed: "+string(speed));
	draw_text(obj_char.x,obj_char.y+obj_char.image_yscale+26, "canCreate: "+string(canCreate));
	
}