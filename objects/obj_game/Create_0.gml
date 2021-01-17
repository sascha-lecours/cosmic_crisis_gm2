/// @description Initialize
randomize();

lives = 3;
score = 0;

draw_set_font(fnt_text);

asteroid_interval = 60; // Initial time in steps between automatic asteroid spawn

function spawn_asteroid_at_border(){
		if(choose(0, 1) == 0){
			//go down side	
			var xx = (choose(0, room_width));
			var yy = irandom_range(0, room_height);
		} else {
			// go along top or bottom
			var xx = irandom_range(0, room_width);
			var yy = (choose(0, room_height));
		}
		
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
		alarm[0] = 4*room_speed;
}