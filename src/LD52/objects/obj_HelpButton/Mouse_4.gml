if (click_me = 1)
	{
		audio_play_sound(sfx_Pickup,1,0);
		if (global.ShowHelp = 0)
			{
				global.ShowHelp = 1;
				exit;
			}
		if (global.ShowHelp = 1)
			{
				global.ShowHelp = 0;
				exit;
			}
	}