#region Shaun



	
	if(distance_to_object(oPlayer)<32){
		canJump--;

	jump(id);
		// and instance_place(x-1,y,oBlock)==noone)
		if(oPlayer.x < x){
			image_xscale = -1;
			hspd = -spd;
			//and instance_place(x+1,y,oBlock)==noone
		}else if(oPlayer.x>=x ){
			image_xscale = 1;
			hspd = spd;
		}
	}
	
	colisao();
	
   
	
#endregion


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