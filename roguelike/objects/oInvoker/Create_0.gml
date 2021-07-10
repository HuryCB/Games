/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

atk = 0;

if(!instance_place(x-8,y,oPlayer)){
	instance_create_layer(x-16,y,layer,oSSkeleton);
}else if(instance_place(x-8,y,oPlayer)){
	instance_create_layer(x-15,y,layer,oSSkeleton);
}