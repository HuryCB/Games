{
	//if (place_meeting(x,y+3,oBlock)){
	//	exit;
	//} else  {
			
	//}
	if(vspd <10){
			vspd += grav;
		}
	if(place_meeting(x,y+2,oBlock)){
		//while(!place_meeting(x,y+sign(vspd)+sign(sprite_height),oBlock)){
		//	y += sign(vspd);
		//}
		vspd=0;
	}
			
	y += vspd;
}

