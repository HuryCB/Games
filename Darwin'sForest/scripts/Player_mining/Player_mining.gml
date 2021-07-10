// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_mining(){
	//draw_sprite(sSteve_walking,0,x,y);
	//sprite_index = sSteve_mining;
	//draw_self();
	//sprite_index = sSteve_mining;
	//if(mouse_check_button_pressed(mb_left)) state = STATE.walking;
	if(!mouse_check_button(mb_left)) state = STATE.walking;
}