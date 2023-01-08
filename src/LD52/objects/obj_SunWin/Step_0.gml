if (fading = 0)
	{
		image_alpha += .01;
	}
else if (fading = 1)
	{
		image_alpha -= .01;
	}
if (image_alpha >= 1)
	{
		randomize();
		alarm_set(0,10);
	}
if (image_alpha <= 0)
	{
		randomize();
		alarm_set(1,10);
	}
if (x < 0)
	{
		x += 1;
	}