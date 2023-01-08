if (tally < global.CurrentFood)
	{
		tally += 1;
		randomize();
		var range = choose(-10,-8,-6,-4,-2,0,2,4,5,6,8,10);
		if (food_spawn_cd = 0)
			{
				instance_create_depth(260 + range, 230+ range, -99999, obj_FoodDrop);
				if (!audio_is_playing(sfx_FoodDrop))
					{
						audio_play_sound(sfx_FoodDrop,1,0);
					}
				food_spawn_cd = 10;
				if (global.CurrentFood <= 100)
					{
						alarm_set(0,6);
					}
				if (global.CurrentFood > 100 and global.CurrentFood <= 800)
					{
						alarm_set(0,4);
					}
				if (global.CurrentFood > 800)
					{
						alarm_set(0,2);
					}
			}
	}
	
if (tally > global.CurrentFood)
	{
		tally = global.CurrentFood;
	}


if (tally = global.CurrentFood)
	{
		if (global.CurrentFood >= 120)
			{
				starve = 1;
				if (!audio_is_playing(sfx_Win) and final_audio_played = 0)
					{
						audio_play_sound(sfx_Win,1,0);
						instance_create_depth(vx,vy,-9999,obj_SunWin);
						final_audio_played = 1;
						alarm_set(1,120);
					}
			}
		else
			{
				starve = 2;
				if (!audio_is_playing(sfx_Lose) and final_audio_played = 0)
					{
						audio_play_sound(sfx_Lose,1,0);
						instance_create_depth(vx,vy,-9999,obj_ColdLose);
						final_audio_played = 1;
						alarm_set(1,120);
					}
			}
	}

if (fade = 1 and can_fade = 1)
	{
		box_alpha += .01;
	}
if (fade = 0)
	{
		box_alpha = 0;
	}
if (box_alpha = 1 )
	{
		game_restart();
	}
