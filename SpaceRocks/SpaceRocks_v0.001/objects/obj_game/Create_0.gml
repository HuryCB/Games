/// @description Insert description here
// You can write your code in this editor
score = 0;
lives = 4;

draw_set_font(fnt_text);

randomize();

enum factions {
	neutral,ally,enemy,enemyBoss
}

enum powerups{
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser_bullets,
	invicible
}