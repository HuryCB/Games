// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isInInventory(argument0){
	
	for(var i=0; i<inv_size;i++){

		if(inv[i] == argument0) return true;
		return false;
	}
}

function posInInventory(argument0){
	for(var i=0; i<inv_size;i++){

		if(inv[i] == argument0) return i;
		
	}
}

function cleanInventory(argument0){
	for(var i=0; i<inv_size;i++){
		if(inv[i] == argument0) inv[i] = -1;		
	}
}