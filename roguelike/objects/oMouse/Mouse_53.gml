/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(oPlayer)<8){
	
	if(place_meeting(x, y, oEnemy)){
			
			var inst = instance_place(x,y,oEnemy);
			Attack(oPlayer,inst);
			
			//instance_destroy(inst);
	}
	//else if(place_meeting(x, y, oItem)){
	//	for(var i = 0;i <9;i++){
	//		if(inv[i][0] ==-1){
	//			inv[i][0] =1;
	//			i = 9;
	//			oPlayer.atk += oSword.atk;
	//		}
	//	}
	//	audio_play_sound(snd_collect,0,0);
	//	var inst = instance_place(x,y,oItem);
	//		instance_destroy(inst);
	//}
}