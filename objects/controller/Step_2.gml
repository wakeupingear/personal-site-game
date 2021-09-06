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

camW=round(_w/pixelSize);
camH=round(_h/pixelSize);

var projmat = matrix_build_projection_ortho(camW,camH, 1.0, 32000.0);
camera_set_proj_mat(global.cam, projmat);

window_set_size(_w,_h);

x=clamp(x,camW/2,room_width-camW/2);
y=clamp(y,camH/2,room_height-camH/2);

var _x=irandom_range(-camShake,camShake);
var _y=irandom_range(-camShake,camShake);
var viewmat = matrix_build_lookat(x+_x, y+_y, -10, x+_x, y+_y, 0, 0, 1, 0);
camera_set_view_mat(global.cam, viewmat);

display_set_gui_size(_w,_h);