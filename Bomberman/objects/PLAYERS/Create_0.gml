//destroyblocks
quantidade = 1;
forca = 1;

var _xp = oPlayer.x;
var _yp = oPlayer.y;

for(i=0;i<3;i++){
		var _block = instance_position(_xp-8+(8*i),_yp-8,oBrickWall);
with(_block) instance_destroy();
	for(w=0;w<3;w++){
	var _block = instance_position(_xp-8+(8*i),_yp-8+(8*w),oBrickWall);
		with(_block) instance_destroy();
	}
}



