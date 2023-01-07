if (distance_to_object(obj_Player) <= 8)
	{
		global.CurrentFood += food_value;
		audio_play_sound(sfx_Pickup,1,0);

		instance_destroy();
	}