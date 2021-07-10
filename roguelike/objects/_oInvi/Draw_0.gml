//exit;
//if(keyboard_check_pressed(ord("I"))) active = !active;

//var _vx = camera_get_view_width(view_camera[0]);
//var _vy = camera_get_view_height(view_camera[0]);
//cam = view_camera[0];


////display_set_gui_maximize(view_w_half,view_h_half);
//display_set_gui_size(_vx,_vy);

//if(active){
//	#region inventory
//	var w = 0, h = 0;
//	for(var i=0; i<inv_size;i++){
//		var _x = global.oX-64 + (16*w);
//		var _y = global.oY+16+(16*h);	
//		//instance_create_layer(_x,_y,layer,oSlot);
//		//draw_sprite(sSlot,0,_x,_y);
//		if(inv[i]!=-1){	
			
//			with(inv[i]){			
//				if pickable{
//					inv[i].x = global.oX;
//					inv[i].y = global.oY;
					
//					inv[i] = -1;
//					exit;
//			}else if(pickable = false){
//					visible = true;
//					if(!isSelected){
//						x =_x;
//						y =_y;	
//					}else{
//						x = mouse_x
//						y = mouse_y;
//					}
//				}
//			}
//		}
//		//loop stuff
//		w++;
//		if(w>4){
//			w=0;
//			h = 1;
//		}	
//	}
//	#endregion
	
//}
