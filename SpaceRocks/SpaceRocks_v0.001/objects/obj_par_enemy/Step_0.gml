/// @description Insert description here
// You can write your code in this editor
event_inherited();
exhaustCounter++;
	
	if(exhaustCounter >= 4){
		exhaustCounter = 0;
		var len = sprite_height*.4,
		var _xx = x - lengthdir_x(len,image_angle),
		var _yy = y - lengthdir_y(len,image_angle);
		with(obj_particles){
			part_particles_create(partSys,_xx,_yy, partTypeEnemyExhaust,1);
		}
	}