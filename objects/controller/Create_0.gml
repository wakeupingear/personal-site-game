/// @description Variables
#macro isHtml os_browser!=browser_not_a_browser
#macro isMobile (os_type==os_ios||os_type==os_android)
gml_pragma("global","scrVariables()");

global.startX=room_width/2;
global.startY=room_height/2;
camLerp=0.1;
pixelSize=2.5*(1-0.5*isMobile);
starTime=0;
camW=0;
camH=0;
camShake=0;