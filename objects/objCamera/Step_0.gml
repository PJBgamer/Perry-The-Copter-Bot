if instance_exists(follow) {
	xto = follow.x;
	yto = follow.y
}
x += (xto - x) / 10;
y += (yto - y) / 10;
x = clamp(x,viewwhalf+buff,room_width-viewwhalf-buff);
y = clamp(y,viewhhalf+buff,room_height-viewhhalf-buff);
x += random_range(-shakeremain,shakeremain);
y += random_range(-shakeremain,shakeremain);
shakeremain = max(0,shakeremain-(1/shakelength)*shakemagnitude)
camera_set_view_pos(cam,x-viewwhalf,y-viewhhalf);
if layer_exists(Background1) {
	layer_x(Background1,x/4)
	layer_y(Background1,y/4)
}
if layer_exists(Background2) {
	layer_x(Background2,x/2)
	layer_y(Background2,y/2)
}