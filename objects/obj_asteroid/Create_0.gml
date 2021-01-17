/// @description Initialize

sprite_index = choose( 
	spr_asteroid_small,
	spr_asteroid_med,
	spr_asteroid_big
);

direction = irandom_range(0,359);
image_angle = irandom_range(0,359);

_rotation_direction = choose(1, -1);

speed = 1;

function BreakApart() {
	score += 10;
	instance_destroy();
	if(sprite_index == spr_asteroid_big){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med;
		}
	} else if (sprite_index == spr_asteroid_med){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	repeat(irandom_range(5,12)){
		instance_create_layer(x,y,"Instances", obj_debris);	
	}
	audio_play_sound(asteroid_break_1, 1, false);
}
