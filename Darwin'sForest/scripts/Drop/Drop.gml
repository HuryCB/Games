// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Drop(argument0){
	var _item = argument0;
	var _obj;
	_obj = instance_create_layer(_item.x,_item.y,_item.layer,oDrop);
	with(_obj){
		sprite_index = _item.sprite_index;
	}
}