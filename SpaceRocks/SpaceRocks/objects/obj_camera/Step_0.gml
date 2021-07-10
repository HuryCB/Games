/// @description Insert description here
// You can write your code in this editor
//follow target

//x += (xTo - x)/25;
//y += (yTo - y)/25;

if(instance_exists(target)){

//global.xTo = global.cameraX;
//global.yTo = global.cameraY;


//MEXER AQ MEXER vv
if(((room.x- target.x)<32)||(room.y - target.y)<32){
	global.cameraX =  target.x-(global.cameraWidth/2) ;
	global.cameraY =  target.y-(global.cameraHeight/2) ;
}else{
	//MEXER AQ ^^

global.cameraX =  lerp(target.x-(global.cameraWidth/2),global.cameraX,0.967) ;
global.cameraY =  lerp(target.y-(global.cameraHeight/2),global.cameraY,0.967) ;
}

}

//camera Shake
global.cameraX += random_range(-global.cameraShake,global.cameraShake);
global.cameraY += random_range(-global.cameraShake,global.cameraShake);

if(global.cameraShake > 0){
	global.cameraShake -= 0.2;
	if(global.cameraShake < 0) global.cameraShake = 0;
}


//camera_set_view_pos(view_camera[0],x,y);
//camera_set_view_pos(view_camera[0],target.x,target.y);

camera_set_view_pos(view_camera[0],global.cameraX,global.cameraY);

layer_x("Parallax_0",global.cameraX*.99);
layer_y("Parallax_0",global.cameraY*.99);

layer_x("Parallax_1",global.cameraX*.92);
layer_y("Parallax_1",global.cameraY*.92);

layer_x("Parallax_2",global.cameraX*.89);
layer_y("Parallax_2",global.cameraY*.89);

layer_x("Parallax_3",global.cameraX*.75);
layer_y("Parallax_3",global.cameraY*.75);