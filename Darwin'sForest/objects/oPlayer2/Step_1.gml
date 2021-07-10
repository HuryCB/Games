#region Shaun

canJump--;
	lKey = keyboard_check(vk_left)or(keyboard_check(ord("A")));
	rKey =keyboard_check(vk_right)or(keyboard_check(ord("D")))
	//keyboard_check(vk_down)or(keyboard_check(ord("S")));
	jKey = keyboard_check(vk_space)||keyboard_check(vk_up);
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
					}		
				}
				if (jKey and canJump>0){
						vspd = -jspd;
						//y = lerp(y,y-8,0.5);
						//vspd = -8;
						canJump = 0 ;
						event_user(2);
					}
	
	if(rKey){
		hspd = spd;
		image_xscale = 1;
	}
	if(lKey){
		hspd = -spd;
		image_xscale = -1;
	}
	if((!rKey and !lKey) || (rKey and lKey)){
		hspd = 0;
		event_user(0);
	}else if(place_meeting(x,y+1,oBlock)and hspd !=0){
		event_user(1);
	}
	
	colission();
	
   
	
	
#endregion

switch(STATE){
	case PLAYER.idle:
		event_user(0);
	break;
	case PLAYER.running:
		event_user(1);
	case PLAYER.jumping:
		event_user(2);
}
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
		if(!instance_exists(oPickAxe))
		instance_create_layer(x,y,layer,oPickAxe);
	}
#endregion
#region status
sanity -=global.second ;
hunger -= global.second ;
#endregion