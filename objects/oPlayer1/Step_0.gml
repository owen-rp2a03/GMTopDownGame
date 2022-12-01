/// @description movement and control
////CONTROL////

global.axislh = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;
global.axislv = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

var l;		//left
l = keyboard_check(ord("A"))
	|| gamepad_button_check(0, gp_padl) //dpad
	|| (global.axislh < -.5); //nes controller
	
var r;		//right
r = keyboard_check(ord("D"))
	|| gamepad_button_check(0, gp_padr) //dpad
	|| (global.axislh > .5 ); //nes controller1

var u;		//up
u = keyboard_check(ord("W"))
	|| gamepad_button_check(0, gp_padu) //dpad
	|| (global.axislv < -.5); //nes controller
	
var d;		//down
d = keyboard_check(ord("S"))
	|| gamepad_button_check(0, gp_padd) //dpad
	|| (global.axislv > .5); //nes controller

//canmove = 1;
moving = 0;
setrot = 1;

shootdir = round(point_direction(x, y, oPlrDir.x, oPlrDir.y)/22.5)*22.5;


x = x1
y = y1 


/*
y = round(y1 / 1.45)

image_xscale = ((y-50)/80);

image_yscale = image_xscale;*/


// UP DOWN LEFT RIGHT
if(canmove == 1){
if (l) && !(u || d)	&& !(place_meeting(x - 3, y, oCollisionStop))	//left
{
	moving = 5;
	moving1 = 5;
	
	x2 += -spd;
	x1 = round(x2);
	
	rot = 180;
	
	
	//move_contact_solid(180, -1);
	
	
}

if (r) && !(u || d)	&& !(place_meeting(x + 3, y, oCollisionStop))	//right
{
	moving = 1;
	moving1 = 1;
	
	x2 += spd;
	x1 = round(x2);
	
	rot = 0;
	
}

if (u) && !(l || r)	&& !(place_meeting(x, y - 3, oCollisionStop))	//up
{
	moving = 3;
	moving1 = 3;
	
	y2 += -spd;
	y1 = round(y2);
	
	rot = 90;
	
	
	
}

if (d) && !(l || r) && !(place_meeting(x, y + 3, oCollisionStop))	//down
{
	moving = 7;
	moving1 = 7;
	
	y2 += spd;
	y1 = round(y2);
	
	rot = 270;
	
	
	
}


// DIAGONALS
if (l) && (u) && !(r) && !(place_meeting(x - 3, y - 3, oCollisionStop))		//left up
{
	moving = 4;
	moving1 = 4;
	
	x2 += -spd*.707;
	y2 += -spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 135;
	
	
	
}
if (l) && (d) && !(r) && !(place_meeting(x - 3, y + 3, oCollisionStop))	//left down
{
	moving = 6;
	moving1 = 6;
	
	x2 += -spd*.707;
	y2 += spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 225;
	
	
	
}
if (r) && (u) && !(l) && !(place_meeting(x + 3, y - 3, oCollisionStop))	//right up
{
	moving = 2;
	moving1 = 2;
	
	x2 += spd*.707;
	y2 += -spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 45;
	
	
	
}
if (r) && (d) && !(l) && !(place_meeting(x + 3, y + 3, oCollisionStop))	//right down
{
	moving = 8;
	moving1 = 8;
	
	x2 += spd*.707;
	y2 += spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 315;
	
	
	
}
}

var a;		//a - 
a = keyboard_check(vk_space)
	
if (a)
{

}

var b;		//b - 
b = keyboard_check(ord("N"))
	|| keyboard_check(vk_space)
	|| gamepad_button_check(0, gp_face2); //nes controller
if (b) {	//
	
}



var se;		//select - speed
se = keyboard_check_pressed(ord("M"))
	
if (se)
{
	
}

var st;		//start
st = keyboard_check(vk_enter);
	
if (st)
{
	
}




