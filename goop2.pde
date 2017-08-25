


// Same as class 'goop' except alterations to colour 
class Goop2
{
  float x; 
  float y; 
  float size;
  float value;
  
  
  
  Goop2(int _x, int _y)
  {
    x = _x;
    y = _y;
    size = random(0,3);
    value = random(230,255);
    
  }
  
  void update()
  {
    
    x += random(-1,1);
    y += random(-1,1);
         
  }
  
  void up2()
  {
    
    x += random(-6,6);
    y += random(-6,6);  
    
  }
  
  
  void draw()
  {
    
    stroke(value,20);
    ellipse(x,y,size,size);
    noFill();
    
   }
}