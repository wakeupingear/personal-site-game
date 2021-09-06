/// @description Set camera
x=global.startX;
y=global.startY;
global.cam=camera_create();
view_camera[0] = global.cam;
var viewmat = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projmat = matrix_build_projection_ortho(640, 480, 1.0, 32000.0);
camera_set_view_mat(view_camera[0], viewmat);
camera_set_proj_mat(view_camera[0], projmat);