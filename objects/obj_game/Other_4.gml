/// @description Populate initial asteroids, music

if(room == rm_game){
	if(audio_is_playing(POL_shape_shift_long)){
		audio_stop_sound(POL_shape_shift_long);
	}
	audio_play_sound(POL_shape_shift_long, 2, true);
}
	
	
repeat(6){
	var xx = choose(
		irandom_range(0, room_width * 0.3),
		irandom_range(room_width * 0.7, room_width)
	);
	var yy = choose(
		irandom_range(0, room_height * 0.3),
		irandom_range(room_height * 0.7, room_height)
	);
	instance_create_layer(xx, yy, "Instances", obj_asteroid);
}

alarm[0] = asteroid_interval;
