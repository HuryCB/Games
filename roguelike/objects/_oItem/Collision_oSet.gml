/// @description Insert description here
// You can write your code in this editor
//if !pickable and !isSelected
//	with(other){
//		if !isUsed{
//			cleanInventory(other.id);
//			isUsed = true;
//		}
//	}
//x = other.x;
//y = other.y;


if !pickable and isSelected{
	with(other){
		
			image_blend = c_red;
			if(mouse_check_button_released(mb_left)){
				cleanInventory(other.id);
				isUsed = true;
				
				exit;
				
			
		}
	}
}