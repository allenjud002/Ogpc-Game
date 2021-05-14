#region //Seting up
KeyLeft = keyboard_check(vk_left) ||  keyboard_check(ord("A"));
KeyRight = keyboard_check(vk_right) ||  keyboard_check(ord("D"));
KeyUp = keyboard_check(vk_up) ||  keyboard_check(ord("W"));
KeyDown = keyboard_check(vk_down) ||  keyboard_check(ord("S"));


//Calculate Movement
var move = KeyRight - KeyLeft;
var movey = KeyDown - KeyUp;

hsp = move * walksp;
vsp = movey * walksp;

 #endregion
#region //Movement




//horizontal collison
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
	dirspeed = 0;
	grav = 0;
}
x = x + hsp;

//vertical collison
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
	dirspeed = 0;
	grav = 0;

}
y = y + vsp;

#endregion