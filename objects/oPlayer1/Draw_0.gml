/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5F4249DC
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 49727DF5
/// @DnDDisabled : 1
/// @DnDArgument : "x" "-32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "image_xscale"


/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5333BA5D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "shootdir"
/// @DnDArgument : "sprite" "sTest3"
/// @DnDSaveInfo : "sprite" "sTest3"
draw_sprite_ext(sTest3, 0, x + 0, y + 0, 1, 1, shootdir, $FFFFFF & $ffffff, 1);