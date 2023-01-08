image_index = click_me;

if (fade = 1)
	{
		box_alpha += .01;
	}
if (fade = 0)
	{
		box_alpha = 0;
	}
if (box_alpha = 1)
	{
		room_goto(HarvestRoom);
	}
	
if (!audio_is_playing(sfx_ThemeSong))
	{
		audio_play_sound(sfx_ThemeSong,1,0);
	}