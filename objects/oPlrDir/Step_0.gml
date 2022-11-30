
spd = 6;

if!(oPlayer1.moving == 0){
if(oPlayer1.moving1 == 1)	//right of player
{
	direction = point_direction(x, y, oPlayer1.x + 32, oPlayer1.y);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 2)	//up right 
{
	direction = point_direction(x, y, oPlayer1.x + 32, oPlayer1.y - 32);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 3)	//up
{
	direction = point_direction(x, y, oPlayer1.x, oPlayer1.y - 32);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 4)	//up left
{
	direction = point_direction(x, y, oPlayer1.x - 32, oPlayer1.y - 32);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 5)	//left
{
	direction = point_direction(x, y, oPlayer1.x - 32, oPlayer1.y);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 6)	//down left
{
	direction = point_direction(x, y, oPlayer1.x - 32, oPlayer1.y + 32);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 7)	//down
{
	direction = point_direction(x, y, oPlayer1.x, oPlayer1.y + 32);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}

if(oPlayer1.moving1 == 8)	//down right
{
	direction = point_direction(x, y, oPlayer1.x + 32, oPlayer1.y + 32);
	x += lengthdir_x(spd,direction);
	y += lengthdir_y(spd,direction);
}
}






