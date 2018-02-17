event_inherited();
if(dir=0){
	if(x>room_width+5){
		instance_destroy();	
	}
} else if(dir=180){
	if(x<-5){
		instance_destroy();	
	}
}
