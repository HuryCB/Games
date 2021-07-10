var _xp = oPlayer.x;
var _yp = oPlayer.y;


for(i=0;i<3;i++){
	instance_create_layer(_xp-8+(8*i),_yp-8,"Bomb",oBomb);

	for(w=0;w<3;w++){
		instance_create_layer(_xp-8+(8*i),_yp-8+(8*w),"Bomb",oBomb);
		
	}
}