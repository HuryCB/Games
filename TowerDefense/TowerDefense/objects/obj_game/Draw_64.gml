/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_set_colour(c_white);


//draw_set_alpha(1);
//draw_set_colour(c_white);
//draw_text(x, y, "LEVEL 1");
switch(room){
		case room_start:
			draw_set_halign(fa_center);
			draw_text(630,300, "How Long Can You Survive?");
			draw_text(630,350, "Press ENTER To Start");
		break;
						
		case room_game:
			draw_set_halign(fa_left);
			draw_text(x, y, "Lives: "+string(lives));
			draw_text(x, y+13, "Score: "+string(score));
			var time = get_timer();
			time = time/(power(10,6));
		
			draw_text(x, y+26, "Current time: "+string(time));
			draw_text(x, y+39, "Coins: "+string(global.coins));
			if !instance_exists(obj_enemies){
				draw_text(x+room_width/2,y, "Time Until Next Wave: "+string(alarm[3]/100));
				draw_text(x+room_width/2,y+16, "Next Wave: "+string(wave+1));
				
			}
			//pause
			if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
	else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width+200, room_height+200, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
}
	//fim do pause
		break;
		
		case rm_gameOver:
			draw_set_halign(fa_center);
			draw_text(630,300, "You Fucking Lost, Loser");
		break;
		
	}