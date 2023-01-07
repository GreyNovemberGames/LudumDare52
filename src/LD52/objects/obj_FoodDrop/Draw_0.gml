//decay ball
if place_meeting(x,y+1,obj_Wall)
	{
		xspd = 0;
		yspd = 0;
	}

//rotate
rot_angle -= xspd;

draw_sprite_ext(spr_Pickup1,image_index,x,y,image_xscale,image_yscale,rot_angle,c_white,1);
