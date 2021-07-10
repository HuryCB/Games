/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_sprite(sCreeper,0,x+32,y);
var pc;
pc = (life / max_life) * 100;
draw_healthbar(x-8, y-8, x+7, y-6, pc, c_black, c_red, c_lime, 0, true, true);
//draw_text(x,y+4, canWalk);

if(oParentSlot.slot[10].slot_item != -1){
	draw_sprite(oParentSlot.slot[10].slot_item.sprite_index,0,x,y);
	//draw_sprite(sDiamondHelmet,0,x,y);
}

if(oParentSlot.slot[11].slot_item != -1){
	draw_sprite(oParentSlot.slot[11].slot_item.sprite_index,0,x,y);
	//draw_sprite(sDiamondHelmet,0,x,y);
}

if(oParentSlot.slot[12].slot_item != -1){
	//draw_sprite(oParentSlot.slot[12].slot_item.sprite_index,0,x,y);
	draw_sprite_ext(oParentSlot.slot[12].slot_item.sprite_index,0,x+4,y,0.3,0.3,0,c_white,1);
	//draw_sprite(sDiamondHelmet,0,x,y);
}
//draw_sprite(sDiamondHelmet,0,x,y);
//draw_sprite(sBLight,0,x+8,y+8);


/*
draw_set_font(Font1);
draw_set_color(c_lime);

draw_text(camera_,y+4, "Hello");
