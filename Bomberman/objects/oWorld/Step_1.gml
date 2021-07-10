switch(room){
	case rm_game: 
	break;
	
	case rm_start:
	if(keyboard_check_pressed(vk_space)){
		room_goto(rm_game);
	}
	break;
}