right = keyboard_check(ord("D"));
left  = keyboard_check(ord("A"));
up    = keyboard_check(ord("W"));
down  = keyboard_check(ord("S"));

//Movement variables
spd = 2;
walkspd = spd;
hspd = 0;
vspd = 0;
diagspd = round(spd * ((sqrt(2)) / 2));

//environment stuff
can_use = 0;
instance_create_depth(x,y,depth,obj_Note);