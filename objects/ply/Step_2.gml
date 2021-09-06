/// @description Animation
var _dir=0;

if moving
{
	frameTime++;
	if frameTime>18-2*floor(spd)
	{
		frameTime=0;
		image_index+=frameDir;
		if image_index%3!=1 frameDir*=-1;
	}
}
else image_index=_dir+1;