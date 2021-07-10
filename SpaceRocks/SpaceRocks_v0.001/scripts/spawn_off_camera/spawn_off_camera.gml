///@function spawn_off_camera
///@param {index} object
///@param {real} number

function spawn_off_camera(_object, _number){
	var xx,yy;
	var pad = 64;
	repeat(_number){
		xx = random_range(0,room_width);
		yy = random_range(0,room_height);
		while(point_in_rectangle(
				xx, yy, global.cameraX - pad, global.cameraY - pad, 
				global.cameraX + global.cameraWidth*2 + pad, 
			global.cameraY + global.cameraHeight*2 + pad
				)
			){
			xx = random_range(0,room_width);
			yy = random_range(0,room_height);
		}
		instance_create_layer(xx, yy, "Instances", _object);
	}
}