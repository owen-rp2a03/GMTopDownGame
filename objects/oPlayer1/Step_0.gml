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


moving = 0;
setrot = 1;

shootdir = round(point_direction(x, y, oPlrDir.x, oPlrDir.y)/22.5)*22.5;

x = x1
y = round(y1 / 1.15)

//image_yscale = ;


// UP DOWN LEFT RIGHT
if (l) && !(u || d)	//left
{
	moving = 5;
	moving1 = 5;
	
	x2 += -spd;
	x1 = round(x2);
	
	rot = 180;
	
}

if (r) && !(u || d)	//right
{
	moving = 1;
	moving1 = 1;
	
	x2 += spd;
	x1 = round(x2);
	
	rot = 0;
	
}

if (u) && !(l || r)	//up
{
	moving = 3;
	moving1 = 3;
	
	y2 += -spd;
	y1 = round(y2);
	
	rot = 90;
	
	
	
}

if (d) && !(l || r)	//down
{
	moving = 7;
	moving1 = 7;
	
	y2 += spd;
	y1 = round(y2);
	
	rot = 270;
	
	
	
}


// DIAGONALS
if (l) && (u) && !(r)	//left up
{
	moving = 4;
	moving1 = 4;
	
	x2 += -spd*.707;
	y2 += -spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 135;
	
	
	
}
if (l) && (d) && !(r)	//left down
{
	moving = 6;
	moving1 = 6;
	
	x2 += -spd*.707;
	y2 += spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 225;
	
	
	
}
if (r) && (u) && !(l)//right up
{
	moving = 2;
	moving1 = 2;
	
	x2 += spd*.707;
	y2 += -spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 45;
	
	
	
}
if (r) && (d) && !(l)	//right down
{
	moving = 8;
	moving1 = 8;
	
	x2 += spd*.707;
	y2 += spd*.707;
	x1 = round(x2);
	y1 = round(y2);
	
	rot = 315;
	
	
	
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




