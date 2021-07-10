/// @description Insert description here
// You can write your code in this editor
var anim_length = 6;

if(moveX != 0 or moveY != 0){
	
	if(moveX > 0){
		draw_sprite_ext(spr_knight_run,-1,x,y,5,5,0,c_white,1);
		direcaoLeste = 1;
	}else if(moveX < 0){
		draw_sprite_ext(spr_knight_run,-1,x,y,-5,5,0,c_white,1);
		direcaoLeste = -1;
	}else if(moveX == 0){
		draw_sprite_ext(spr_knight_run,-1,x,y,5*direcaoLeste,5,0,c_white,1);
	}
	
	if(x_frame < anim_length -1){
		x_frame += 15/60;
	}else{x_frame = 0;}
}else{
	draw_sprite_ext(spr_knight_idle,-1,x,y,5*direcaoLeste,5,0,c_white,1);
}
