/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_teste)){
	
obj_teste.x = spawnX;
obj_teste.y = spawnY;

}
switch(room){
	case room_start:
	audio_play_sound(snd_back,1,true);
	break;
	case room_game:
	audio_stop_all();
	if(audio_is_playing(snd_back3)){
		audio_stop_sound(snd_back3);
	}
		audio_play_sound(snd_back3,2,true);
	break;
	
	case rm_gameOver:
	audio_stop_all();
	audio_play_sound(snd_back2,3,true);
	break;
}