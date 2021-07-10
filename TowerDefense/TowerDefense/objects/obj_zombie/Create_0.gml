/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

direction = 1;
image_xscale = viradoDireita;
if(direction >= 0 && direction<=90 || direction >=270 && direction <= 360)
	image_xscale = viradoDireita;
	else image_xscale = - viradoDireita;
	
mudarLado = true;
image_xscale = -image_xscale;