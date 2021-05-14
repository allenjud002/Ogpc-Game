if ((instance_exists(VileSwordMinion)) && (instance_exists(oPlayer)))
{
move_towards_point(oPlayer.x, oPlayer.y, 75);
}

if (place_meeting(x,y,oPlayer))
{
	instance_destroy();
	
}