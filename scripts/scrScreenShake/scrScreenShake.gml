//Format: scrScreenShake (magnitude,frames)
with objCamera
{
	if argument0 > shakeremain
	{
		shakemagnitude = argument0;
		shakeremain = argument0;
		shakelength = argument1;
	}
}