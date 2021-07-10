/// @description Insert description here
// You can write your code in this editor
 wave++;
 

for (var i = 0;  i < wave+5; i += 1){
	var enemy = choose(obj_imp,obj_zombie,obj_enemie_eye);
	xspace = irandom_range(1200,1400);
	xspacewest = irandom_range(-100,100);
	xspace = choose(xspace,xspacewest);
	yspace = irandom_range(-100,100);
	yspacesouth = irandom_range(500,700);
	yspace = choose(yspace,yspacesouth);

	instance_create_layer(xspace+irandom_range(-15,15),yspace,"Instances", enemy);
}


