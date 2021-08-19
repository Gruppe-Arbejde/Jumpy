/// @description Insert description here
// You can write your code in this editor
scr_controls();
#region control the player horizontal movement

if(right)
{
	hspd += moveSpd;
}
else if(left)
{
	hspd += -moveSpd;
}
else
{
	hspd = 0;
}

#endregion

#region control the gravity and jumping
var onTheFloor = place_meeting(x, y+1, oSolid);

if(onTheFloor)
{
	vspd = 0;
	
	//allow jumping
	scr_jumpCode();
	
	
}
else
{
	//apply gravity
	vspd += GRAV;
	
	//cut the jump speed in half.
	if(jumpReleased)
	{
		if(vspd != jumpForce) && vspd < 0
		{
			vspd /= 4;
		}
	}
}


#endregion

var  maxSpeed = 8;
#region clamp the player horizontal speed
hspd = clamp(hspd, -maxSpeed, maxSpeed);

#endregion

#region all collisions
scr_jumpThroughCollisions(oJumpThroughPlatform);
scr_collisions();


#endregion



var getId = collision_rectangle(bbox_left, bbox_top-50, bbox_right, bbox_bottom-8, oJumpThroughPlatform, false, false) ;
if(getId != noone)
{
	objectShowVspd = getId;
}