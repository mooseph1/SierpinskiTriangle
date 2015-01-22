public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	noFill();
	stroke(0, 255, 255);
	sierpinski(75,425, 350);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 10)
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else
	{
		triangle(x, y, x + len, y, x + len/2, y - len);
	}
}