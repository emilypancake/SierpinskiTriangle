public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(255, 255, 255);
  sierpinski(0, width, width);
  sierpinski(width/2, width+width, width);
  //sierpinski(width/2, width+width*2, width);
  //sierpinski(width/2, width-width*2, width);
}
public void mouseDragged()//optional
{
  sierpinski(width/2, width+width, width);
}
public void sierpinski(int x, int y, int len){
  fill(0, 0, 0);
  if(len <= 5){
    triangle(x, y-len/2, x+len/2, y+len/2, x-len/2, y+len/2);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
  
}
