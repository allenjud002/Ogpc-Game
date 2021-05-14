if ((place_meeting(x,y,oPlayer)) && (global.key = true))
{
instance_destroy();
global.key = false;
repeat 15
{
X = choose(-10,-20,-30,-40,-50,10,20,30,40,50);
Y = choose(-10,-20,-30,-40,-50);
instance_create_layer(x + X, y + Y,"Player", choose(Coin, XPcoin));
}






}