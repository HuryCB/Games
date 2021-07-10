/// @description Insert description here
// You can write your code in this editor

if(colidivel ==true){
	lives = lives -10;
	Atacou = true;
	lado = image_xscale;

	direction =  direction + 180;
	image_xscale =  - lado;
	speed = obj_char.speed + 6;
	colidivel = false;
	if(obj_char.x<x){
	
	//image_xscale =  - viradoDireita;
	
}else if (obj_char.x>x){
	
	//image_xscale = viradoDireita;
}
}