/// @description Insert description here
// You can write your code in this editor/
/*
draw_self();

var kapp = instance_place(x,y,oShadow);
if(place_meeting(x,y,oShadow) and kapp.image_alpha!=1){
	if(place_meeting(x, y, oEnemy)){
			with(oEnemy){
			draw_sprite(sMouse,0,x,y);
			}
			var inst = instance_place(x,y,oEnemy);
			var atk = "Atk: ";
			draw_text_ext_transformed(x,y,atk,2,150,1/6,1/6,0);
			draw_text_ext_transformed(x+string_length(atk)*2,y,string(inst.atk),2,150,1/6,1/6,0);
	
			var life = "Vida: ";
			draw_text_ext_transformed(x,y+2,life,2,150,1/6,1/6,0);
			draw_text_ext_transformed(x+string_length(life)*2,y+2,string(inst.life),2,150,1/6,1/6,0);
	
			
	
	} 
	if(place_meeting(x, y, oItem)){
		var inst = instance_place(x,y,oItem);
		var name = "Item: ";
		draw_text_ext_transformed(x,y+8,name,2,150,1/6,1/6,0);
		draw_text_ext_transformed(x,y+10,inst.name,2,150,1/6,1/6,0);
	}

}