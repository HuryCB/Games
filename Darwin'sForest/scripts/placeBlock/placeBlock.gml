// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function placeBlock(argument0){
	var _block = argument0;
	//var _str = object_get_name(argument0.object_index);
	
	
		//var _otherBlock = instance_position(mouse_x,mouse_y,oBlock);
	
	teste = instance_position(mouse_x,mouse_y+9,oBlock);
		//show_debug_message(_block.object_index);
		if(teste!=noone){
			instance_create_layer(teste.x,teste.y-8,"Player",_block);
			exit;
		}else{
			teste = instance_position(mouse_x,mouse_y-9,oBlock);
			if(teste!=noone){
				instance_create_layer(teste.x,teste.y+8,"Player",_block);
			exit;
			}
		}
		{
			teste = instance_position(mouse_x-9,mouse_y,oBlock);
			if(teste!=noone){
				instance_create_layer(teste.x+8,teste.y,"Player",_block);
			exit;
			}
		}
		{
			teste = instance_place(mouse_x+9,mouse_y,oBlock);
			
			if(teste!=noone){
				instance_create_layer(teste.x-8,teste.y,"Player",_block);
			exit;
			}
		}
		
	
}
