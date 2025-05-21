/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
texture_debug_messages(true);
show_debug_overlay(true);

var _arr_names = texturegroup_get_names();
show_debug_message("Texture Groups:\n--------------");
array_foreach(_arr_names, show_debug_message);