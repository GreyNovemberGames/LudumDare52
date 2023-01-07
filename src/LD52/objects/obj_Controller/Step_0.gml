global.CurrentTime += 1;

if (global.CurrentTime > 100) //10,800 3 min -- 3,600 - 1 min
	{
		room_goto(EndRoom);
		audio_play_sound(sfx_OutOfTime,1,0);
	}