//if(state == STATE.walking){
//	if(!audio_is_playing(sndStep)){
//			audio_play_sound(sndStep,0,0);
//		}
//}

	if(mouse_x>x)image_xscale=1;
	else if(mouse_x<=x)image_xscale = -1;
	lKey = keyboard_check(vk_left)or(keyboard_check(ord("A")));
	rKey =keyboard_check(vk_right)or(keyboard_check(ord("D")))
	//keyboard_check(vk_down)or(keyboard_check(ord("S")));
	moveX = rKey-lKey;
	
	jKey = keyboard_check(vk_space)||keyboard_check(vk_up)||keyboard_check(ord("W"));
	jKey_pressed = keyboard_check_pressed(vk_space);
	if(keyboard_check(vk_shift)){
		spd =running_spd;
		
	}else{
		spd = walking_spd;
		
	}
	
	if (place_meeting(x,y+1,oBlock)){
					vspd = 0;
					canJump = 15;
		
				} else {
					if(vspd <10){
						vspd += grav;
						canJump--;
					}		
				}
				if (jKey and canJump>0){
						//image_alpha = 0;
						vspd = -jump_height;
					
						//y = lerp(y,y-8,0.5);
						//vspd = -8;
						canJump = 0 ;
						//event_user(2);
						//state_set(states.jumping);
						//return;
					}
	if(moveX!=0){
		hspd = moveX*spd;
	}
	if((!rKey and !lKey) || (rKey and lKey)){
		hspd = 0;
	//	sprite_index = sSteve_idle;
		//state_set(states.idle);
	}else if(place_meeting(x,y+1,oBlock)and hspd !=0){
		//event_user(1);
		//state_set(states.walk);
		//if(state == STATE.walking){
			if(!audio_is_playing(sndStep)){
				audio_play_sound(sndStep,0,0);
			}
		//}

	}
				if(mouse_check_button(mb_left)){
		state = STATE.mining;
		if(!instance_exists(oPickAxe))
		instance_create_layer(x,y,layer,oPickAxe);
	}	
colisao();	