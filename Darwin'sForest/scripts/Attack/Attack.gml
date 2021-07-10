// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Attack(argument0,argument1){
	attacker = argument0;
	target = argument1;
	with(target){
		if(invencible == false){
			life -= argument0.atk;
			countdown = 0;
			invencible = true;
				var dir = point_direction(argument0.x,argument0.y,argument1.x,argument1.y);
				x += lengthdir_x(20, dir);
				y += lengthdir_y(20, dir);
				audio_play_sound(sndPain,0,false);
		}
	}
}