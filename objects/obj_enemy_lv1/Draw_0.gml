/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_self();

var originColor = draw_get_color();

draw_set_color(c_red);
draw_circle(x, y, attackDistance, true);
draw_set_color(originColor);
draw_circle(x, y, detectDistance, true);