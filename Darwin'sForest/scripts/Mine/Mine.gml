// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Mine(argument0,argument1){
	var _tool = argument0;
	var _target = argument1;

	
	switch(_tool.object_index){		
		case oPickAxe:		
			switch(_target.object_index){			 
				case oWoodBlock:
				case oLeafBlock:
				case oDirtBlock:	
				case oStoneBlock:
				case oSandBlock:
				if(_tool.recarga >=30){
							_tool.recarga = 0;
							_target.image_alpha -=0.25;
							instance_destroy(_target);
						}
									
				
				break;
				
			}
		break;
	}
}