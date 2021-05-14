if (point_in_circle(RPG_Player.x,RPG_Player.y,x,y,64)) && (!instance_exists(oText))
{
	with (instance_create_layer(x,y-64,"Instances",oText))
	{
		text = other.text;
		length = string_length(text);
	}
}