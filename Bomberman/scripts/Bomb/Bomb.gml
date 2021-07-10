// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Bomb(){
	var _id = argument0;
	var _obj = instance_create_layer(x,y,"Bomb",oBomb);
	with(_obj){
		dono = _id;
		forca = _id.forca
	}
	_id.quantidade--;
}