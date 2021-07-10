instance_create_layer(x,y,layer,oWoodBlock);
topper = instance_create_layer(x,y-8,layer,oWoodBlock);


	
var val=choose(1,0,0);
if(val ==1){
	topper=instance_create_layer(x,y-16,layer,oWoodBlock);
}

with(topper){
	instance_create_layer(x,y-8,layer,oLeafBlock);
	instance_create_layer(x-8,y-8,layer,oLeafBlock);
	instance_create_layer(x+8,y-8,layer,oLeafBlock);
	instance_create_layer(x-8,y,layer,oLeafBlock);
	instance_create_layer(x+8,y,layer,oLeafBlock);
}