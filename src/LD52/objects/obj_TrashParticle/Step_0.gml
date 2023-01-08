image_angle += rot_speed;

x -= blow_speed;
y += y_range;
depth = -11000;
if (x < 0)
	{
		instance_destroy();
	}