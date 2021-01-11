/// @description Take player input and act
_turnDirection = 0;
_isShooting = false;

if(keyboard_check(vk_left)){
	_turnDirection = 1;
} else if(keyboard_check(vk_right)){
	_turnDirection = -1;
}

if(keyboard_check(vk_space)){
	_isShooting = true;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, _thrust);
}

move_wrap(true, true, sprite_width/2);

TurnShip(self);

if(_isShooting and _shotCooldown <= 0){
	var inst = instance_create_layer(x,y,"Instances", obj_bullet)
	inst.direction = image_angle;
	_shotCooldown = _shotInterval;
}

_shotCooldown -= delta_time/1000000;
