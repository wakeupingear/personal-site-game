function stars(_x,_y,_depth,_num) {
	repeat _num
	{
		instance_create_depth(_x+irandom_range(-8,8)*1,_y+irandom_range(-3,3)*1,_depth,oStar)
	}
}
