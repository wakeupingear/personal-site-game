/// @description Camera movement + Viewport
if instance_exists(ply)
{
	x=lerp(x,ply.x,camLerp);
	y=lerp(y,ply.y,camLerp);
}

var _w=window_get_width();
var _h=window_get_height();

if isHtml
{
	_w=browser_width;
	_h=browser_height;
}

var _cw=round(_w/pixelSize);
var _ch=round(_h/pixelSize);

var projmat = matrix_build_projection_ortho(_cw,_ch, 1.0, 32000.0);
camera_set_proj_mat(global.cam, projmat);

window_set_size(_w,_h);

x=clamp(x,_cw/2,room_width-_cw/2);
y=clamp(y,_ch/2,room_height-_ch/2);

var viewmat = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(global.cam, viewmat);