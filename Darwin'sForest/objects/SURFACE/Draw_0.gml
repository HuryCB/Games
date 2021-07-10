if(surface_exists(lighting_surface)){
	lighting_surface = surface_create(room_width,room_height);
	var _cw = camera_get_view_height(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	var _cx = camera_get_view_x(view_camera[0]);
	var _cy = camera_get_view_y(view_camera[0]);
	
	surface_set_target(lighting_surface);
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0,0,_cw,_ch,0);
	
	with(oTorch){
		draw_sprite_ext(sTorch_light,0,x-_cx,y-_cy,1,1,0,c_white,0);	
	}
	gpu_set_blendmode(bm_normal);
	
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(lighting_surface,_cw,_ch);
}

if(!surface_exists(lighting_surface)){
	var _cw = camera_get_view_height(view_camera[0]);
	var _ch = camera_get_view_height(view_camera[0]);
	
	lighting_surface = surface_create(_cw,_ch);
	surface_set_target(lighting_surface);
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0,0,_cw,_ch,0);
	
	surface_reset_target();
}