/// @description Insert description here
// You can write your code in this editor
event_inherited();

if(point_distance(x,y,oPlayer.x,oPlayer.y)<=16){
	image_speed = 000.1/150;
	if(tempo < 60 and s3){
		audio_play_sound(snd_death,0,false);
		s3 = false;
		
	}
	else if(tempo< 120 and s2 ){
		audio_play_sound(snd_death,0,false);
		s2 = false;
		
	}
	else if(tempo<180 and s1){
		audio_play_sound(snd_death,0,false);
		s1 = false;
		
	}
		
	//audio_play_sound(snd_death,0,false);
	//audio_play_sound(snd_death,0,false);
	tempo--;
	if(tempo <=0){
	audio_play_sound(snd_death,0,false);
	audio_play_sound(snd_death,0,false);
	audio_play_sound(snd_death,0,false);
	oPlayer.life -=50;
	instance_destroy();
	
	}
	
}else{
	tempo = 180;
	s1 = true;
	s2 = true;
	s3 = true;
	image_index = 0;
	image_speed = 0;
}