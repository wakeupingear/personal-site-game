/// @description 
var _l=0.4;
x1=lerp(x1,camL(),_l);
x2=lerp(x2,camR(),_l);
y1=lerp(y1,camT(),_l);
y2=lerp(y2,camB(),_l);
shake(3,30);
repeat 100
{
	instance_create_layer(irandom_range(x1,x2),irandom_range(y1,y2),"title",oEx);
}