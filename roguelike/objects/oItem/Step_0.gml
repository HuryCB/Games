/// @description Insert description here
// You can write your code in this editor

if holdedBy == oMouse2 image_blend = c_green;
	
	//else if holdedBy != -1{
	//	for(var i = 0; i < inv_size+3;i++){
	//		if( oParentSlot.slot[i].slot_item == id){
					
	//		}
	//	}
	//}
	else image_blend = c_white;
	
if holdedBy == -1 layer_add_instance(layer_get_id("overFloor"),id);
else if holdedBy == oMouse2.mouse_item layer_add_instance(layer_get_id("Camera"),id);
else layer_add_instance(layer_get_id("Player"),id);