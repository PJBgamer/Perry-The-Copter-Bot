if hp = 0 {
	instance_create_layer(x,y,"Characters",objExplosion);
	scrScreenShake(2,10);
	instance_destroy();
}