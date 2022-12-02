if keyboard_check(vk_escape) game_end();

if keyboard_check(vk_f2) room_goto(room);

if keyboard_check(vk_f3) game_restart();

if keyboard_check(vk_f5)
{
	window_set_size( 256, 240 );
	win_scale = 0
	
	ini_open("save.ini");
	ini_write_real("setting", "win_scale", win_scale);
	ini_close();
	
}
if keyboard_check(vk_f6)
{
	window_set_size( 512, 480 );
	win_scale = 1
	
	ini_open("save.ini");
	ini_write_real("setting", "win_scale", win_scale);
	ini_close();
}
if	keyboard_check(vk_f7)	
{
	window_set_size( 768, 720 );
	win_scale = 2
	
	ini_open("save.ini");
	ini_write_real("setting", "win_scale", win_scale);
	ini_close();
}



	
