/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		draw_text(20,20, "Score: "+string(score));
		draw_text(20,40, "Lives: "+string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
		global.cameraWidth/2,100, "SPACE ROCKS", 6,6, 0, c,c,c,c,1	
		);
		draw_text(
			global.cameraWidth/2,200,
@"Score 1,000 points to win!
UP: move
LEFT/RIGHT: change direction
SPACE: shoot
>> PRESS ENTER TO START<<"
			);
		draw_set_halign(fa_left);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_aqua;
		draw_text_transformed_color(
		global.cameraWidth/2,100,"YOU WON!", 6,6,0,c,c,c,c,1
		);
		draw_text(global.cameraWidth/2,200,"PRESS ENTER TO RESTART");
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		if(room != rm_win){
		draw_text_transformed_color(
		global.cameraWidth/2,150,"GAME OVER!", 6,6,0,c,c,c,c,1
		);
		draw_text(global.cameraWidth/2,350,"PRESS ENTER TO RESTART");
		}
		draw_text(global.cameraWidth/2,250,"FINAL SCORE: "+string(score));
		
		break;
}