// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jump(argument0){
	switch(argument0.object_index){
	
		case oPlayer:
				if (place_meeting(x,y+1,oBlock)){
					//vspd = 0;
					canJump = 15;
		
				} else {
					if(vspd <10){
						//vspd += grav;
					}		
				}
				if (jKey and canJump>0){
					//	vspd = -jspd;
						y = lerp(y,y-8,0.5);
						//vspd = -8;
						canJump = 0 ;
						event_user(2);
					}
		break;
			
		case oTeste:
				if (place_meeting(x,y+1,oBlock)){
					//vspd = 0;
					canJump = 15;
		
				} else {
					if(vspd <10){
						vspd += grav;
					}		
				}
				if (oPlayer.y<y and canJump>0){
						vspd = -jspd;
						canJump = 0 ;
						
					}
		break;
	}
}