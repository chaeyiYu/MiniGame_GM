/// @description 랜덤 target position 정하기

targetX = random_range(xprevious - 500, xprevious + 500);
targetY = random_range(yprevious - 800, yprevious + 800);

alarm[0] = 60;

show_debug_message("enemy alarm 0");