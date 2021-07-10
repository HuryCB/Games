// Inherit the parent event
event_inherited();

{
	if (place_meeting(x,y+1,oBlock)){
		
		exit;
	} else {
		if(vspd <10){
			vspd += grav;
		}		
	}
	if(place_meeting(x,y+vspd,oBlock)){
		while(!place_meeting(x,y+sign(vspd),oBlock)){
			y += sign(vspd);
		}
		vspd=0;
	}
	y += vspd;
	
}