// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function initialise_bullet(_dir,_spd,_fac,_creator,inst){

	with(inst){
				direction = _dir;
				if(object_index == obj_bullet)	speed = _spd;
				if(object_index == obj_balaDif) speed = _spd;
				
			//	if(faction == 40) image_blend = c_yellow;
			
				faction = _fac;
				creator = _creator;
				if(_fac == 40){
					image_blend = c_yellow;
					faction = factions.enemy;			
					//layer_sprite_get_yscale
					image_xscale = image_xscale*3;
					image_yscale = image_yscale*3;
					exit;
				}
				
																			
			 if(faction == factions.ally)image_blend = c_aqua;
				else if(faction== factions.enemy) image_blend =  c_red;					
			}		
			//image_blend = c_green
}