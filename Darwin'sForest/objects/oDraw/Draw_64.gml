draw_text(0,0,oPlayer.life);

draw_sprite_ext(sSanity18,0,0,20,0.5,0.5,0,0,1);	
draw_sprite(sSanity18,0,16,28);	
draw_text(28,20, oPlayer.sanity);
draw_text(0,40,oPlayer.hunger);

 draw_text(0, 60, "FPS = " + string(fps_real));