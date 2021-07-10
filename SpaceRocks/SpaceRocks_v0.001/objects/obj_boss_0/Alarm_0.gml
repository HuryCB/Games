/// @description Insert description here
// You can write your code in this editor
//var i=0;

if(image_blend == c_silver){
	image_blend = c_yellow;
	exit;
}
image_blend = c_silver;

var i = 0;
repeat(4){
	
	create_bullet(image_angle+i,speedDaNave+5,40,id,-1,-1);
	i += 5;
}
//alarm[0]= 5*room_speed;