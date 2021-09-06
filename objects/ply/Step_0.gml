/// @description Move
if visible{
var _xmove=(keyboard_check(vk_right))-(keyboard_check(vk_left));
var _ymove=(keyboard_check(vk_down))-(keyboard_check(vk_up));

if _xmove!=0||_ymove!=0
{
	target_x=x+6*_xmove;
	target_y=y+6*_ymove;
}
else if mouse_check_button(mb_left)&&distance_to_point(mouse_x,mouse_y)>3
{
	target_x=round(mouse_x);
	target_y=round(mouse_y);
	moving=true;
}

moving=(distance_to_point(target_x,target_y)>targetDist);
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

var _xDist=lengthdir_x(1,direction);
var _xWall=abs(_xDist)<0.1;
repeat floor(spd)
{
	x+=_xDist;
	if place_meeting(x,y,hitobj)
	{
		while place_meeting(x,y,hitobj)
		{
			x-=lengthdir_x(1,direction);
		}
		_xWall=true;
		break;
	}
}

var _yDist=lengthdir_y(1,direction);
var _yWall=abs(_yDist)<0.1;
repeat floor(spd)
{
	y+=_yDist
	if place_meeting(x,y,hitobj)
	{
		while place_meeting(x,y,hitobj)
		{
			y-=lengthdir_y(1,direction);
		}
		_yWall=true;
		break;
	}
}

if _xWall&&_yWall
{
	target_x=x;
	target_y=y;
}
}
else
{
	if mouse_check_button_pressed(mb_left)
	{
		visible=true;
		instance_destroy(oTitle);
		mouse_clear(mb_left);
	}
}

depth=round(-y);