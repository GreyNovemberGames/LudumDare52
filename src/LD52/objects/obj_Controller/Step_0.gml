global.CurrentTime += 1;

if (global.CurrentTime = 4000)
	{
		audio_play_sound(sfx_OutOfTime,1,0);
		instance_create_depth(obj_Player.x,vy,-9999,obj_ColdLose);
	}
if (global.CurrentTime > 6000) //10800 3 min -- 3600 - 1 min
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