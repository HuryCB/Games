// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//var _dir = argument[0];
//var _spd = argument[1];
//var _fac = argument[3];






function create_bullet(_dir,_spd,_fac,_creator){
	
	var _gun_type = -1;
	var _id = -1;
	
	if(argument_count > 4) _gun_type = argument[4];
	if(argument_count > 5) _id = argument[5];
	//var _creator = self;
	
	switch(_gun_type){
		
		case powerups.three_bullets:
			var inst = instance_create_layer(x,y,"Instances",obj_bullet);	
			initialise_bullet(_dir,_spd,_fac,_creator,inst);
		case powerups.two_bullets:
			audio_play_sound(snd_zap,1,false);
			
			var _sep = 12;
			
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90),"Instances",obj_bullet);	
			initialise_bullet(_dir,_spd,_fac,_creator,inst);
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90),"Instances",obj_bullet);	
			initialise_bullet(_dir,_spd,_fac,_creator,inst);
			
			break;
			break;
				
		case powerups.four_bullets:
			audio_play_sound(snd_zap,1,false);
			
			var _sep = 0,bullet_angle;
			
			var i = 0; repeat(4){
				
				bullet_angle = _dir + (i * 30);
				var inst = instance_create_layer(x+lengthdir_x(_sep,bullet_angle+300),y+lengthdir_y(_sep,bullet_angle+300),"Instances",obj_bullet);	
				initialise_bullet(bullet_angle-45,_spd,_fac,_creator,inst);
				i++;
			
			}
			break;			
		case powerups.star_bullets:
			audio_play_sound(snd_zap,1,false);
			
			var _sep = 7,bullet_angle;
			
			var i = 0; repeat(8){
				
				bullet_angle = _dir + (i * 45);
				var inst = instance_create_layer(x+lengthdir_x(_sep,bullet_angle),y+lengthdir_y(_sep,bullet_angle),"Instances",obj_bullet);	
				initialise_bullet(bullet_angle,_spd,_fac,_creator,inst);
				i++;
			
			}
			break;
		case powerups.laser_bullets:
			audio_play_sound(snd_laser,1,false);
			var inst = instance_create_layer(x,y,"Instances",obj_laser);	
			initialise_bullet(_dir,_spd,_fac,_creator,inst);
			
			break;
		default:
			audio_play_sound(snd_zap,1,false);
			
			if(_id == 1){
					var inst = instance_create_layer(x+lengthdir_x((sprite_width/2)+0.5,image_angle),y+lengthdir_y((sprite_height/2),image_angle),"Instances",obj_balaDif);	
					initialise_bullet(_dir,_spd,_fac,_creator,inst);
					break;
			}
			
					var inst = instance_create_layer(x+lengthdir_x((sprite_width/2)+0.5,image_angle),y+lengthdir_y((sprite_height/2),image_angle),"Instances",obj_balaDif);	
			initialise_bullet(_dir,_spd,_fac,_creator,inst);
			exit;
			break;
		
	}
	
	

	
	
	
//	audio_play_sound(snd_zap,1,false);
	
}