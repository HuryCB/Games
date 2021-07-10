/// @description Insert description here
// You can write your code in this editor
if(count == count_max)  instX = instance_place(x,y,oNPC);
if(instance_exists(instX)){
	x = instX.x;
	y = instX.y;
}else{ instance_destroy();}
	
if(count <0) instance_destroy();
count--;

if(count > count_max/2)image_angle-=10;
else image_angle +=10;




//count--;
//if(count< 60 and estagio[0] == true){
//	instance_create_layer(x+48,y,layer,oSword);
//	estagio[0] = false;
//}

//if(count< 120 and estagio[1] == true){
//	instance_create_layer(x+32,y,layer,oSword);
//	estagio[1] = false;
//}

//if(count< 180 and estagio[2] == true){
//	instance_create_layer(x+16,y,layer,oSword);
//	estagio[2] = false;
//}