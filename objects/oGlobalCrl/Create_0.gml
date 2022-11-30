

ini_open("save.ini");

win_scale = ini_read_real("setting", "win_scale", 1);

global.invul = ini_read_real("setting", "invul", 0);

ini_close();



if(win_scale == 0) window_set_size( 256, 240 );

if(win_scale == 1) window_set_size( 512, 480 );

if(win_scale == 2) window_set_size( 768, 720 );


