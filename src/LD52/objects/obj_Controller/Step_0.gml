global.CurrentTime += 1;

if (global.CurrentTime >= 4000)
	{
		if (!audio_is_playing(sfx_Wind))
			{audio_play_sound(sfx_Wind,1,0);}
		if (instance_number(obj_TrashParticle) < trash_cap and trash_cd = 0)
		{
			randomize();
			instance_create_depth(2060,random_range(400,1088),-11000,obj_TrashParticle);
			alarm_set(0,60);
			trash_cd = 1;
		}
	}

if (global.CurrentTime = 7000)
	{
		audio_play_sound(sfx_OutOfTime,1,0);
		instance_create_depth(obj_Player.x,vy,-9999,obj_ColdLose);
	}
if (global.CurrentTime = 8000) //10800 3 min -- 3600 - 1 min
	{
		
		audio_play_sound(sfx_OutOfTime,1,0);
		fade = 1;
	}
	
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
		room_goto(EndRoom);
	}

if (!audio_is_playing(sfx_ThemeSong))
	{
		audio_play_sound(sfx_ThemeSong,1,0);
	}