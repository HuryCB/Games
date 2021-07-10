x = mouse_x;//faz acompanhar o verdadeiro mouse
y = mouse_y;
if(mouse_check_button_pressed(mb_left)){
	var instX = instance_place(x,y,oItem);
	if(place_meeting(x,y,instX)){	
		if (mouse_item == -1 and instX.holdedBy == -1 and point_distance(instX.x,instX.y,oPlayer.x,oPlayer.y) == 0){
				
				for(var i = 0; i < inv_size;i++){
					if( oParentSlot.slot[i].slot_item == -1){
							oParentSlot.slot[i].slot_item = instX;
							instX.holdedBy = oParentSlot.slot[i];
							audio_play_sound(snd_collect,0,0);
							exit;
					}
				}
		}else{	
				
		}
	}
}

if(keyboard_check_pressed(ord("E"))){
	var instX = instance_place(oPlayer.x,oPlayer.y,oItem);
	if(place_meeting(oPlayer.x,oPlayer.y,instX)){	
		if (mouse_item == -1 and instX.holdedBy == -1 and point_distance(instX.x,instX.y,oPlayer.x,oPlayer.y) == 0){
				
				for(var i = 0; i < inv_size;i++){
					if( oParentSlot.slot[i].slot_item == -1){
							oParentSlot.slot[i].slot_item = instX;
							instX.holdedBy = oParentSlot.slot[i];
							audio_play_sound(snd_collect,0,0);
							exit;
					}
				}
		}else{	
				
		}
	}
}


if !oParentSlot.active exit;  

if(mouse_check_button_pressed(mb_left)){
	var instX = instance_place(x,y,oItem);
	if(place_meeting(x,y,instX)){	
		if (mouse_item == -1){
				if(instX.holdedBy == -1 and point_distance(instX.x,instX.y,oPlayer.x,oPlayer.y) != 0){//
					exit;
				}else{
					if(instX.holdedBy != -1){//verifica se o objeto está sendo segurado por algo
						for(i = 10; i<13; i++){
							if( oParentSlot.slot[i].slot_item == instX){//verifica se esse algo é 1 slot de item
								with(	instX ) event_user(1);//ativa o evento 1, após desequipar algum item
							}
						}
					}
					mouse_item = instX;
					instX.holdedBy = oMouse2;
				}
		}
	}
}



if mouse_item != -1 {//se tiver segurando itens
	mouse_item.x = x;//faz o x do item seguir o x do mouse
	mouse_item.y = y;
	
	mouse_item.image_blend = c_green;
	
	if(mouse_check_button_released(mb_left)){//se estiver segurando, e soltar
		var instX = instance_place(x,y,oSlot)
		if(place_meeting(x,y,instX)){//confirma a verificação
			if(instX.slot_item==-1){//se o Slot estiver vazio
				if(instX.item_type == -1){
					instX.slot_item= mouse_item;//faz o slot armazenar o id que estava no mouse
					mouse_item.holdedBy = instX;
					mouse_item = -1;//libera o item do mouse
					
				}else if(instX.item_type == mouse_item.item_type){//slots de itens
					instX.slot_item= mouse_item;//faz o slot armazenar o id que estava no mouse			
					mouse_item.holdedBy = instX;
					mouse_item = -1;//libera o item do mouse
					with(	instX.slot_item ) event_user(0);
					
				}
			}
			
		}else{
			mouse_item.x = oPlayer.x;
			mouse_item.y = oPlayer.y;
			mouse_item.image_blend = c_white;
			mouse_item.holdedBy = -1;
			mouse_item = -1;//libera o item do mouse no lugar em que o mouse estava
			
		}
	}
}
	



