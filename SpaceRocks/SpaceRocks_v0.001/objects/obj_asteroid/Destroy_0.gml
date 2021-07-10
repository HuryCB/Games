/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_powerup){
	if(irandom_range(0,0) == 0){	
		instance_create_layer(x,y,"Instances",obj_powerup);		
	}
}
score+= 10;
audio_play_sound(snd_die,1,false);

var _xx = x, _yy = y;

if(sprite_index == spr_asteroid_huge){
	global.cameraShake = 4;
	with(obj_particles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 12);
	repeat(2){
	var new_asteroid =instance_create_layer(x,y,"Instances",obj_asteroid);
	new_asteroid.sprite_index = spr_asteroid_med;
	}
	if(irandom_range(0,9) == 0){
		instance_create_layer(x,y,"Instances",obj_powerup);		
	}
}
else if(sprite_index == spr_asteroid_med){
	global.cameraShake = 2;
	with(obj_particles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 6);
	repeat(2){
	var new_asteroid =instance_create_layer(x,y,"Instances",obj_asteroid);
	new_asteroid.sprite_index = spr_asteroid_small;
	}
	if(irandom_range(0,8) == 0){
		instance_create_layer(x,y,"Instances",obj_powerup);		
	}
}else{
	with(obj_particles) part_particles_create(partSys, _xx, _yy, partTypeAsteroidDebris, 2);
	global.cameraShake = 1;
	if(irandom_range(0,6) == 0){
		instance_create_layer(x,y,"Instances",obj_powerup);		
	}
}

