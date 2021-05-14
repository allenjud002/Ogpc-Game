if ((instance_exists(Ice_Ball)) && (instance_exists(oPlayer)))
{
move_towards_point(oPlayer.x, oPlayer.y, 35);
}

if (place_meeting(x,y,oPlayer))
{
	instance_destroy();
	
}