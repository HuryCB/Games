/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	audio_play_sound(msc_song,2,true);
	
	spawn_off_camera(obj_asteroid,40);
	//spawn_off_camera(obj_boss_0,1);
	
	spawn_off_camera(obj_raider,8);
	spawn_off_camera(obj_brute,3);
	spawn_off_camera(obj_hunter,5);


	alarm[0]=60;
}