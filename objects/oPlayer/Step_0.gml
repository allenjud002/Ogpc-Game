#region //Seting up
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right); 
key_jump = keyboard_check_pressed(vk_up);
key_jump_fw = keyboard_check(vk_up);

global.vsp = vsp;
global.walksp = walksp;

Key_wall_jump_left = key_left && key_jump_fw;
Key_wall_jump_right = key_right && key_jump_fw;

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

 if (place_meeting(x,y+1,oWall)) && (key_jump)
 {
	 vsp = -14.65;
	 Jump = 2;
 }
 
 if (key_jump) && (Jump != 0)
 {
	 vsp = -14.65;
	 Jump -= 1;
 }
 #endregion
#region //Movement


 
 //Wall Jump right
 if (place_meeting(x-1,y,oWall)) && (Key_wall_jump_left)
 {
	 vsp = -10.65;
	 hsp += 30;
 }

 //Wall Jump left
if (place_meeting(x+1,y,oWall)) && (Key_wall_jump_right)
 {
	 vsp = -10.65;
	 hsp -= 30;
 }
 


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
	#region // Checkpoints
if (place_meeting(x,y,Lava))
{
lives = lives - 1;
if (global.Checkpoint = true)
	{
		x = global.Check_lastX;
		y = global.Check_lastY;
	}
	else
	{
		x = xstart;
		y = ystart;
	}
	
	
}
#endregion

#region
if (keyboard_check(vk_left))
{
	image_index = 1;
	
	
}
if (keyboard_check(vk_right))
{
	image_index = 2;
	
	
}


 
 if ((!key_right) and (!key_left))
{
	image_index = 0;
	
	
}
#endregion




// If we've been hit, this means we're no longer 
// following a path, so bounce him off sctreen!
if hit
{
x = x + dirspeed;
y = y + grav;


}

if (keyboard_check(ord("R")))
{
	game_restart();
}