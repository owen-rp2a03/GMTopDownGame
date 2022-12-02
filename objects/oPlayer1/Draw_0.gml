/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5F4249DC
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 49727DF5
/// @DnDArgument : "x" "-32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
draw_text(x + -32, y + 0,  + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5333BA5D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "shootdir"
/// @DnDArgument : "sprite" "sTestArrow"
/// @DnDSaveInfo : "sprite" "sTestArrow"
draw_sprite_ext(sTestArrow, 0, x + 0, y + 0, 1, 1, shootdir, $FFFFFF & $ffffff, 1);