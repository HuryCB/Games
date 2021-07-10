if(thisTime>time){
	instance_destroy();
	instance_create_layer(x,y,layer,oTree);
}
thisTime += global.second;

