/// @description Damage player

lives -= 1;

with(obj_game){
	alarm[1] = room_speed;
}

repeat(irandom_range(15,22)){
		instance_create_layer(x,y,"Instances", obj_debris);
		audio_play_sound(ship_explodes, 1, false);
	}


instance_destroy();
