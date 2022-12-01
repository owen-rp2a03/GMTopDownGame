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



////ROOM CONTROL
global.tilecheckx = 0;
global.tilechecky = 0;

if(!(global.tilecheckx >= room_width))
{
	var l4A38D1E8_0 = layer_tilemap_get_id("Tiles1");
	global.tile = undefined;
	if(l4A38D1E8_0 > -1) {
		var l4A38D1E8_1 = tilemap_get_at_pixel(l4A38D1E8_0, global.tilecheckx, global.tilechecky);
		if(l4A38D1E8_1 > -1) global.tile = tile_get_index(l4A38D1E8_1);
	}

	if(global.tile == 0)
	{
		instance_create_layer(global.tilecheckx, global.tilechecky, "Instances", oCollisionStop);
	
		global.tilecheckx += 16;
	}
}


