/// @description 


walkdirx = oPlayer1.x + random_range(-64,64)
walkdiry = oPlayer1.y + random_range(-64,64)

direction = point_direction(x, y, walkdirx, walkdiry);

if(image_xscale == 1)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

alarm[0] = 45;














