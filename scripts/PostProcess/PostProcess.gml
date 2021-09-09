function ppFog(_spr,_xPos,_yPos,_fogXS,_fogYS,_a,_color,_stepNum,_time,_isSurface){
	shader_set(shd_fog);
	shader_set_uniform_f(shader_get_uniform(shd_fog,"time"),_time);
	shader_set_uniform_f(shader_get_uniform(shd_fog,"fog_color"),color_get_red(_color)/255,color_get_green(_color)/255,color_get_blue(_color)/255);
	shader_set_uniform_f(shader_get_uniform(shd_fog,"stepNum"),_stepNum);
	shader_set_uniform_f(shader_get_uniform(shd_fog,"alpha"),_a);
	var _fogSpr=_spr;
	var _fogW=sprite_get_width(_fogSpr)*_fogXS;
	var _fogH=sprite_get_height(_fogSpr)*_fogYS;
	
	var _y=_yPos;
	while _y<(camY()*(!_isSurface)) _y+=_fogH;
	for (var i=-1;_y+i*_fogH<camY()+216-(camY())*(_isSurface);i++)
	{
		var _x=_xPos;
		while _x<(camX())*(!_isSurface) _x+=_fogW;
		for (var k=-1;_x+k*_fogW<camX()+384-(camX())*(_isSurface);k++)
		{
			draw_sprite_ext(_fogSpr,0,_x+k*_fogW,_y+i*_fogH,1,_fogYS,0,-1,1);
		}
	}
	shader_reset();
}