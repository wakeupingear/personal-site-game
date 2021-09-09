function camX(){ return camL() };
function camY(){ return camT() };

function camL(){
	return controller.x-controller.camW/2;
}

function camR(){
	return controller.x+controller.camW/2;
}

function camT(){
	return controller.y-controller.camH/2;
}

function camB(){
	return controller.y+controller.camH/2;
}