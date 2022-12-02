/// @description move


x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);


var camx1 = camera_get_view_x(view_camera[0]);
var camy1 = camera_get_view_y(view_camera[0]);
var camx2 = camx1 + camera_get_view_width(view_camera[0]);
var camy2 = camy1 + camera_get_view_height(view_camera[0]);
if( !point_in_rectangle( x, y, camx1, camy1, camx2, camy2)){
    instance_destroy();
}






