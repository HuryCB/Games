// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_walking(){
	#region Shaun
	
	
	if(moveX!=0){
		//hspd = moveX*spd;
		//x+=hspd;
		image_xscale = sign(moveX);
		sprite_index = sSteve_walking;
	}
	
	if((!rKey and !lKey) || (rKey and lKey)){
		hspd = 0;
		sprite_index = sSteve_idle;
		//state_set(states.idle);
	}else if(place_meeting(x,y+1,oBlock)and hspd !=0){
		//event_user(1);
		//state_set(states.walk);
		if(state == STATE.walking){
			if(!audio_is_playing(sndStep)){
				audio_play_sound(sndStep,0,0);
			}
		}

	}
	
	//colission();
	
   
	
	
#endregion

//switch(STATE){
//	case PLAYER.idle:
//		event_user(0);
//	break;
//	case PLAYER.running:
//		event_user(1);
//	case PLAYER.jumping:
//		event_user(2);
//}
#region atk
//if(mouse_check_button_pressed(mb_left)){
//	var faca = instance_create_layer(oPlayer.x,oPlayer.y,layer,oKnife);
//	instance_create_layer(oPlayer.x,oPlayer.y,layer,oAtak);
//with(faca){
//}	
////point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);
//with(oPlayer){
//	var dir = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y)+180;
//	//x += lengthdir_x(20, dir);
//    //y += lengthdir_y(20, dir);
//	//x_goto = lengthdir_x(20, dir);
//	//x = lerp(x,x+x_goto+200,0.1);
//	//x += lengthdir_x(20, dir);
//    //y += lengthdir_y(20, dir);
//	//x = lerp(x, goal_x, 0.1);
	
//}
//}
#endregion

#region mine
	if(mouse_check_button(mb_left)){
		state = STATE.mining;
		if(!instance_exists(oPickAxe))
		instance_create_layer(x,y,layer,oPickAxe);
	}
#endregion


}