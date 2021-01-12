/// @description Damage player

lives -= 1;

repeat(irandom_range(15,22)){
		instance_create_layer(x,y,"Instances", obj_debris);	
	}

instance_destroy();
