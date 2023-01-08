draw_set_halign(fa_center);
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
		draw_text(vx + vw/2,vy + vh - 50, "Press any key");
	}