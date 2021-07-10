draw_self();
switch(state){
	case STATE.walking: Player_walking();
	 break;
	case STATE.mining: 
	
	sprite_index = sSteve_mining;
	
	Player_mining();
	//draw_sprite(sSteve_mining,0,x,y);
	break;
}

