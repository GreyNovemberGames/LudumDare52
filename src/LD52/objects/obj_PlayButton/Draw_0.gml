draw_self();
draw_sprite(spr_TitleText,0,10,7);

draw_set_color(c_white);
draw_set_font(fnt_Big2);
draw_set_halign(fa_center)
draw_text(256,277, "Press ESC to return to this screen")
if (global.ShowHelp = 1)
	{
		draw_sprite(spr_TextBox,0,260,128);
		draw_text(356,128,"A winter storm is");
		draw_text(356,140,"coming quickly. Find");
		draw_text(356,152,"all the food you can");
		draw_text(356,164,"before it hits.");
		
		draw_text(356,188,"Movement - WASD");
		draw_text(356,200,"Interract - E/Space");
		draw_set_color(make_color_rgb(59,33,55));
		draw_text(356,224,"Grey November Games");
		draw_text(356,236,"Ludum Dare 52 - 2023");
		draw_set_color(c_white);
	}

draw_sprite(spr_Mouse,0,mouse_x,mouse_y);
draw_sprite_ext(spr_Blackout,-1,vx,vy,4,4,0,c_white,box_alpha);
