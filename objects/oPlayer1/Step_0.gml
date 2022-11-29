/// @description movement
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

// UP DOWN LEFT RIGHT
if (l) && !(u || d)	//left
{
	x1 += -spd;
	x = round(x1);
	
	rot = 180;
}

if (r) && !(u || d)	//right
{
	x1 += spd;
	x = round(x1);
	
	rot = 0;
	
	
}

if (u) && !(l || r)	//up
{
	y1 += -spd;
	y = round(y1);
	
	rot = 90;
	
	
}

if (d) && !(l || r)	//down
{
	y1 += spd;
	y = round(y1);
	
	rot = 270;
	
	
}

// DIAGONALS
if (l) && (u) && !(r)	//left up
{
	x1 += -spd*.707;
	y1 += -spd*.707;
	x = round(x1);
	y = round(y1);
	
	rot = 135;
}
if (l) && (d) && !(r)	//left down
{
	x1 += -spd*.707;
	y1 += spd*.707;
	x = round(x1);
	y = round(y1);
	
	rot = 135;
}
if (r) && (u) && !(l)//right up
{
	x1 += spd*.707;
	y1 += -spd*.707;
	x = round(x1);
	y = round(y1);
	
	rot = 45;
}
if (r) && (d) && !(l)	//right down
{
	x1 += spd*.707;
	y1 += spd*.707;
	x = round(x1);
	y = round(y1);
	
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






