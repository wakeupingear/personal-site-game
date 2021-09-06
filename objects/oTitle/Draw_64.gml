/// @description Draw title
var _gw=display_get_gui_width();
var _gh=display_get_gui_height();
var _newStr=string_copy(words,0,char);
x1=round(_gw/2-string_width(_newStr)/2);
x2=x1+string_width(_newStr);
y1=round(_gh/2)-string_height(_newStr)/2;
y2=y1+string_height(_newStr);
draw_text(x1,round(_gh/2),_newStr);

x1=round(controller.camW/2-(_gw-x1)/_gw*controller.camW+controller.x);
x2=round(controller.camW/2-(_gw-x2)/_gw*controller.camW+controller.x);
y1=round(controller.camH/2-(_gh-y1)/_gh*controller.camH+controller.y);
y2=round(controller.camH/2-(_gh-y2)/_gh*controller.camH+controller.y);