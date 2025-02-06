public void setup()
{

}
public void draw()
{
  sierpinski(0, 0, 100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x, y, len, len);
  }else{
    sierpinski(x, y, len/2, len/2);
    sierpinski(x+len/2, y, len);
    sierpinski(x+len/4, y-len/2, len);
  }
}
