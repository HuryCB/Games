/// @description Insert description here
// You can write your code in this editor
canAtk--;
canAtk = clamp(canAtk,0,60);

if(life<=0){
	instance_destroy();
}

if(distance_to_object(oPlayer)<8){
	Attack(id,oPlayer);
}
	
if(oPlayer.x < x){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}