// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_room(){
	for(i=0;i<5;i++){
	var _x = 12;
	var _y = 12;
	instance_create_layer(_x,_x+(16*i),"Instances",oStoneWall);
	for(w=0;w<6;w++){
		instance_create_layer(_x+(16*w),_x+(16*i),"Instances",oStoneWall);
	}
	}




	for(i=0;i<12;i++){
		var _x = 4;
		var _y = 4;
		var _criar = choose(0,1);
	
		if(_criar)instance_create_layer(_x,_x+(8*i),"Instances",oBrickWall);
		else if(!_criar){
			var _grass = irandom_range(1,10);
				if(_grass==1)instance_create_layer(_x,_x+(8*i),"grass",oGrass);
				
		}
		for(w=0;w<13;w++){
				var _criar = choose(0,1);	
			if(_criar)instance_create_layer(_x+(8*w),_x+(8*i),"Instances",oBrickWall);
			else if(!_criar){
			var _grass = irandom_range(1,10);
				if(_grass==1)instance_create_layer(_x+(8*w),_x+(8*i),"grass",oGrass);
				
			}
		}
	}

	var _spawn = choose(0,1,2,3);

	switch(_spawn){
		case 0: instance_create_layer(4,4,"Player",oPlayer);
		break;
		case 1: instance_create_layer(room_width-4,4,"Player",oPlayer);
		break;
		case 2: instance_create_layer(4,room_height-4,"Player",oPlayer);
		break;
		case 3: instance_create_layer(room_width-4,room_height-4,"Player",oPlayer);
		break;
	}

	//destroyblocks
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
}
