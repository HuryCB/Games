// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Eat(argument0, argument1){
	npc = argument0 ;
	food = argument1;
	with(npc){
		if((life+food.life)>npc.max_life)npc.life = npc.max_life; 
		else life += food.life;
		
		if((npc.hunger+food.hunger)>npc.max_hunger)npc.hunger = npc.max_hunger;
		else npc.hunger += food.hunger;
		
		if((npc.sanity+food.sanity)>npc.max_sanity)npc.sanity = npc.max_sanity;
		else npc.sanity += food.sanity;
		
	}
	instance_destroy(argument1);
	audio_play_sound(sndCollect,0,0);
}