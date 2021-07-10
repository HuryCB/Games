/// @description Insert description here
// You can write your code in this editor
if(tempo != tempoWave){
	var thistempo = tempo/60;
	var text = "Tempo até a próxima wave ";
	draw_text(oPlayer.x-string_width(text)/2,oPlayer.y-40,text + string(thistempo)+"s");
}