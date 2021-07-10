/// @description Insert description here
// You can write your code in this editor
/*
if(!instance_exists(obj_enemies)){
	tempo--;
	
	if(tempo<0){
		repeat(wave+1){
			var thisX = random_range(-300,300);
			instance_create_layer(oPlayer.x+thisX,oPlayer.y-200,layer,obj_enemie_eye);
		}
		wave++;
		tempo = tempoWave;
	}
}