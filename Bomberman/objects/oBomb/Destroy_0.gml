var _obj = instance_create_layer(x,y,layer,oExplosion);
		with(_obj) sprite_index = sCenterExplosion;

for(i=1;i<forca+1;i++){
	var _x =x+(8*i);
	var _y =y+(8*i);
	if(place_empty(_x,y,oStoneWall)){
	instance_create_layer(_x,y,layer,oExplosion);
		
	}else
		i = forca;
}
for(i=1;i<forca+1;i++){
	var _x =x+(8*i);
	var _y =y+(8*i);
	if(place_empty(x,_y,oStoneWall)){
			var _obj = instance_create_layer(x,_y,layer,oExplosion);
		with(_obj) image_angle +=270;
	}else
		i = forca;
}
for(i=1;i<forca+1;i++){
	
	var _x = x-(8*i);
	var _y =y-(8*i);
	if(place_empty(_x,y,oStoneWall)){
			var _obj =instance_create_layer(_x,y,layer,oExplosion);
		with(_obj) image_angle +=180;
		
	}else
		i = forca;
}

for(i=1;i<forca+1;i++){
	var _x =x-(8*i);
	var _y =y-(8*i);
	if(place_empty(x,_y,oStoneWall)){
			var _obj = instance_create_layer(x,_y,layer,oExplosion);
		with(_obj) image_angle +=90;
	}else
		i = forca;
}

dono.quantidade++;