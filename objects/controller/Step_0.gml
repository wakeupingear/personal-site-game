/// @description Stars
if mouse_check_button(mb_left)
{
	starTime--;
	if starTime<=0
	{
		stars(mouse_x,mouse_y,-mouse_y,2);
		starTime=4
	}
}
else starTime=0;