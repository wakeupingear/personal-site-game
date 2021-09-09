/// @description Animation
var _dir=0;
if direction>=270+45||direction<=45 _dir=12;
else if direction>45&&direction<135 _dir=8;
else if direction>=135&&direction<225 _dir=4;

if moving
{
	frameTime++;
	if frameTime>18-2*floor(spd)
	{
		frameTime=0;
		index+=frameDir;
		if index==2 index+=frameDir;
		if index%3!=1 frameDir*=-1;
	}
}
else
{
	frameTime++;
	if frameTime>30
	{
		frameTime=0;
		frameDir*=-1
	}
	index=1.5+frameDir*0.5;
}

image_index=_dir+index;