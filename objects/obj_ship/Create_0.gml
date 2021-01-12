/// @description Initialize


_shotCooldown = 0;
_turnSpeed = 5;
_thrust = 0.05;
_shotInterval = 0.2;
_shotOffset = sprite_width/2;


function TurnShip(_ship){
	if(_ship._turnDirection != 0){
		_ship.image_angle += _ship._turnSpeed * _ship._turnDirection;
	}
	
}
