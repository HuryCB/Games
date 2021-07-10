/// @description Insert description here
// You can write your code in this editor

//if(lives<0) room_goto(rm_gameOver);

if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case room_start:			
			room_goto(room_game);
		break;				
		case room_game:			
		break;				
		case rm_gameOver:		
	}
}

if(room == room_game){
/*	if lives <0
	room_goto(rm_gameOver);
	*/
	//pause
	if !instance_exists(obj_enemies) && paused ==false{
			obj_char.status = true;
			if(alarm[3] == -1){
			alarm[3] = 10 * room_speed;
			}
		}
		
	if keyboard_check_pressed(vk_escape)
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
	if paused == true
	    {
	    alarm[0]++;
	    alarm[1]++;
		
	    }
		exit;
		
}

