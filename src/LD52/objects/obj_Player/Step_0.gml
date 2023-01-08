depth = -y ;
can_use = 0;
if (instance_exists(obj_Pickup1))
	{
		if (distance_to_object(obj_Pickup1) <= 8)
			{
				can_use = 1;
			}
	}
if (instance_exists(obj_Door1))
	{
		if (distance_to_object(obj_Door1) <= 8)
			{
				can_use = 1;
			}
	}

if (instance_exists(obj_Door2))
	{
		if (distance_to_object(obj_Door2) <= 8)
			{
				can_use = 1;
			}
	}

#region Movement

right = keyboard_check(ord("D"));
left  = keyboard_check(ord("A"));
up    = keyboard_check(ord("W"));
down  = keyboard_check(ord("S"));

hspd = right - left;
vspd = down - up;

if (place_free(x + hspd * spd, y)) //Horizontal collision
{
x += hspd * spd;
}
if (place_free(x, y + vspd * spd)) //Vertical collision
{
y += vspd * spd;
}
if (vspd != 0) and (hspd !=0)	   //Diagonal movement control
	{
		spd = diagspd;
	}

else
	{
		spd = walkspd;
	}
#endregion

if (vspd != 0)
	{
		if (!audio_is_playing(sfx_PlayerStep))
			{
				audio_play_sound(sfx_PlayerStep,0,0);
			}
	}
if (hspd != 0)
	{
		if (!audio_is_playing(sfx_PlayerStep))
			{
				audio_play_sound(sfx_PlayerStep,0,0);
			}
	}

#region Animation Control
if (hspd = 0 and vspd = 0)		//Stop animation if not moving
	{
		image_speed = 0;
		image_index = 0;
	}
else
	{
		image_speed = 1;
	}
	
if (vspd > 0)					//Assign down sprite if moving down
	{
		sprite_index = spr_PlayerDown;
	}
if (vspd < 0)					//Assign up sprite if moving up
	{
		sprite_index = spr_PlayerUp;
	}
if (hspd != 0)					//Flip image based on direction
{
	image_xscale = hspd;
}
if (vspd = 0 and hspd != 0)     //If only moving left or right, sprite should face down
	{
		sprite_index = spr_PlayerDown;
	}
	

#endregion