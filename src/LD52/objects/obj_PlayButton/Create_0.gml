global.ShowHelp = 0;
click_me = false;
vx = view_get_xport(0);
vy = view_get_yport(0);
vw = window_get_width();
vh = window_get_height();
instance_create_depth(vx,vy,-9999,obj_SunWin);
fade = 0;
box_alpha = 0;
depth = -9999;
if (!audio_is_playing(sfx_ThemeSong))
	{
		audio_play_sound(sfx_ThemeSong,1,0);
	}