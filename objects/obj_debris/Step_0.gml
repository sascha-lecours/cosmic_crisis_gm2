/// @description Decrement time to live

_timeToLive -= delta_time/1000000;

if(_timeToLive <= 0){
	instance_destroy();	
} else {
	image_alpha = 0.3 + _timeToLive/_maxTimeToLive;	
}
