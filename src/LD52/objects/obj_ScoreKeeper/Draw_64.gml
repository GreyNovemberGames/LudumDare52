draw_set_halign(fa_center);
draw_set_font(fnt_Big);

draw_text(vx + vw/2,vy + vh/3, string(tally));



if (starve = 1)
	{
		draw_text(vx + vw/2,vy + vh/4, "You survived the winter!");
	}
if (starve = 2)
	{
		draw_text(vx + vw/2,vy + vh/4, "You starved to death!");
	}
if (final_audio_played = 1)
	{
		draw_text(vx + vw/2,vy + vh - 40, "Press any key");
	}
	
draw_sprite_ext(spr_Blackout,-1,vx,vy,4,4,0,c_white,box_alpha);