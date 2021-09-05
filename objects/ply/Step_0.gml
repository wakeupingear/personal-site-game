/// @description Move
var _xmove=(keyboard_check(vk_right))-(keyboard_check(vk_left));
var _ymove=(keyboard_check(vk_down))-(keyboard_check(vk_up));

if _xmove!=0||_ymove!=0
{
	target_x=x+6*_xmove;
	target_y=y+6*_ymove;
	moving=true;
}
else if mouse_check_button(mb_left)&&distance_to_point(mouse_x,mouse_y)>3
{
	target_x=round(mouse_x);
	target_y=round(mouse_y);
	moving=true;
}
else moving=false;

if moving
{
	direction=point_direction(x,y,target_x,target_y);
	if spd<maxSpd spd+=acc;
}
else
{
	if spd>0 spd-=acc;
	if spd==0
	{
		x=round(x);
		y=round(y);
	}
}

x+=lengthdir_x(spd,direction);
y+=lengthdir_y(spd,direction);