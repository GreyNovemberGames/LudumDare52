yspd += grav;

if place_meeting(x+xspd,y,obj_Wall)
	{
		while !place_meeting(x+sign(xspd),y,obj_Wall)
			{
				x +=sign(xpd);
			}
			//bounce
			xspd *= -bouncedecay;
	}

if place_meeting(x,y+yspd,obj_Wall)
	{
		while !place_meeting(x,y+sign(yspd),obj_Wall)
			{
				y+=sign(yspd);
			}
			//bounce
			yspd *= -bouncedecay;
	}
	
x+=xspd;
y+=yspd;
	
if (yspd < .01)
	{
		xspd = 0;
	}
	
if (yspd < .01)
	{
		yspd = 0;
	}