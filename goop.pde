



class Goop
{
  
  float x; // Controls location along horizontal axis 
  float y; // Controls location along vertical axis 
  float size;// Controls particle size
  float value;// Controls colour value 
  
  
  // Constructor: Defines the parameters of the particle 
  Goop(int _x, int _y)
  {
    
    x = _x;
    y = _y;
    size = random(0,3);
    value = random(0,40);
    
  }
  
  
 
  // Controls the particle function
  void update()
  {
    
    // This update changes the position every frame for both x and y 
    x += random(-1,1);
    y += random(-1,1);
    
  }
  
  void up2()
  {
    
    // Alternative to first update 
    x += random(-6,6);
    y += random(-6,6);
    
  }
  
  // This section controls what the particle and class actually creates per frame
  void draw()
  {
    
    stroke(value,20);
    ellipse(x,y,size,size);
    noFill();
    
   }
}




    //int x = int(random(img.width));
    //int y = int(random(img.height));
    //int loc = x +y*img.width;
    
    
    //loadPixels();
    //float value = color(img.pixels[loc]);
    
    
    
    
    //a = img.get(int(x),int(y)) >> color(255);
    
    //ellipse(x,y,size,size);
    //color c = img.get(int(x),int(y));
    //fill(c);
    //stroke(c,10);