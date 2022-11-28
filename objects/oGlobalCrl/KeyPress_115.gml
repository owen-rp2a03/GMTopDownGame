/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 586288AA
/// @DnDDisabled : 1
/// @DnDArgument : "var" "oDevInfo.visible"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36FACBBD
/// @DnDDisabled : 1
/// @DnDParent : 586288AA
/// @DnDArgument : "var" "global.invul"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B80BB41
/// @DnDDisabled : 1
/// @DnDParent : 36FACBBD
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.invul"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 45982B56
/// @DnDDisabled : 1
/// @DnDParent : 586288AA
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E71ABFF
/// @DnDDisabled : 1
/// @DnDParent : 45982B56
/// @DnDArgument : "var" "global.invul"

/// @DnDAction : YoYo Games.Files.Open_Ini
/// @DnDVersion : 1
/// @DnDHash : 6782A05E
/// @DnDDisabled : 1
/// @DnDParent : 586288AA
/// @DnDArgument : "filename" ""save.ini""


/// @DnDAction : YoYo Games.Files.Ini_Write
/// @DnDVersion : 1
/// @DnDHash : 7033C72E
/// @DnDDisabled : 1
/// @DnDParent : 586288AA
/// @DnDArgument : "type" "1"
/// @DnDArgument : "section" ""setting""
/// @DnDArgument : "key" ""invul""
/// @DnDArgument : "value" "global.invul"


/// @DnDAction : YoYo Games.Files.Close_Ini
/// @DnDVersion : 1
/// @DnDHash : 708A41D0
/// @DnDDisabled : 1
/// @DnDParent : 586288AA