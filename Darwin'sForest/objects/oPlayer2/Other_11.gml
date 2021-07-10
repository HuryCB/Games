{
	STATE = PLAYER.running;
	sprite_index = sSteve_walking;
		if(!audio_is_playing(sndStep)){
			audio_play_sound(sndStep,0,0);
		}
}
	