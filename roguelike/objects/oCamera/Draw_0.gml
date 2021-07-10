/// @description Insert description here
// You can write your code in this editor

//draw_sprite(spr_sword,0,x-view_w_half+8,y-view_h_half+8);

//draw_text(x-view_w_half+8,y-view_h_half+8,string(oPlayer.atk));
var atk = "Atk: ";
draw_text_ext_transformed(x-view_w_half,y-view_h_half,atk,2,150,1/4,1/4,0);
draw_text_ext_transformed(x-view_w_half+string_length(atk)*2,y-view_h_half,string(oPlayer.atk),2,150,1/4,1/4,0);

var life = "Life: ";
draw_text_ext_transformed(x-view_w_half,y-view_h_half+4,life,2,150,1/4,1/4,0);
draw_text_ext_transformed(x-view_w_half+string_length(life)*2,y-view_h_half+4,string(oPlayer.life),2,150,1/4,1/4,0);

var lifeSteal = "LifeSteal: ";
draw_text_ext_transformed(x-view_w_half,y-view_h_half+8,lifeSteal,2,150,1/4,1/4,0);
draw_text_ext_transformed(x-view_w_half+string_length(lifeSteal)*2,y-view_h_half+8,string(oPlayer.lifeSteal),2,150,1/4,1/4,0);

var defense = "Defense: ";
draw_text_ext_transformed(x-view_w_half,y-view_h_half+12,defense,2,150,1/4,1/4,0);
draw_text_ext_transformed(x-view_w_half+string_length(defense)*2,y-view_h_half+12,string(oPlayer.defense),2,150,1/4,1/4,0);