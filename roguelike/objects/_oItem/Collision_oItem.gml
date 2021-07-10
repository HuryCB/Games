/// @description Insert description here
// You can write your code in this editor
/*
if !pickable and isSelected{
	with(other){
		if !pickable{
			image_blend = c_red;
			if(mouse_check_button_released(mb_left)){
				var obj_1 = posInInventory(id);
				
				var obj_2 = posInInventory(other.id);
				inv[obj_1] = other.id;
				inv[obj_2] = id;
				exit;
				
			}
		}
	}
}

			