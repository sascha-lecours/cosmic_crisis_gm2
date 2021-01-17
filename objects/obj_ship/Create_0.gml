/// @description Initialize


_shotCooldown = 0;
_turnSpeed = 5;
_thrust = 0.05;
_shotInterval = 0.2;
_shotOffset = sprite_width/2;
_shotSounds = [player_shoot_1, player_shot_2]


function TurnShip(_ship){
	if(_ship._turnDirection != 0){
		_ship.image_angle += _ship._turnSpeed * _ship._turnDirection;
	}
	
}
