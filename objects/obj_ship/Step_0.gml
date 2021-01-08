/// @description Take player input and move
_turnDirection = 0;
_turnSpeed = 5;
_thrust = 0.05;

function TurnShip(_ship){
	if(_ship._turnDirection != 0){
		_ship.image_angle += _ship._turnSpeed * _ship._turnDirection;
	}
	
}

if(keyboard_check(vk_left)){
	_turnDirection = 1;
} else if(keyboard_check(vk_right)){
	_turnDirection = -1;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, _thrust);
}

TurnShip(self);
