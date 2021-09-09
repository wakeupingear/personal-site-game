function scrVariables(){
	draw_set_font(Montserrat);
	if !isHtml window_set_cursor(cr_arrow);
	else if !isMobile&&false
	{
		window_set_cursor(cr_none);
		instance_create_depth(0,0,-10000,oMouse);
	}
	else window_set_cursor(cr_handpoint);

	global.cam=-1;
	global.startX=1382/2
	global.startY=768/2;
}