
// This is Goop 
// Adrian Marcon - s3488484
// Assignment 1: Computational Prototyping 


ArrayList<Goop> goops = new ArrayList<Goop>();
ArrayList<Goop2> goop2s = new ArrayList<Goop2>();
PImage img;
String w = "Click and drag to draw           Hold 'c' to clear          Press 'v' to upsize        Press 'z' for white Goop          Press 'b' to save image";
boolean  screen = false;
 
void setup()// Only runs once 
{ 
  
  background(255);
  frameRate(120); // Affects the speed of drawing tool 
  size(1200,800); // Size of canvas 
  
  img = loadImage("welcome.jpg");
   
}

// Defining function of 'false' boolean variable
void splash()
{
  
  image(img,0,0);
  
}


void draw()// Runs every frame 
{
  
 // Boolean variable makes image launch with program
 if(screen == false){
   splash();
 } else if (screen == true){ 
   
 // Descriptive text
 text(w,20,20,width,20);
 fill(0,10);
 
// Applying class "Goop"
 for (int i = 0; i < goops.size(); i++)
 {
   Goop goop = goops.get(i);
   goop.update();
   goop.draw();
  
   // Clearing the built up particles 
   if (keyPressed)
   {
    {
     if (key == 'c' || key == 'C'){
     goops.remove(i);
     background(255);
    }
   }
   
   // Altering the application of the Goop class by applying different update
   if (keyPressed)
   {
    {
     if (key == 'v' || key == 'V'){
       goop.up2();
    }
   }
   
   }
 
    }
  }
 
  // Applying second class "Goop2" 
  for (int i = 0; i < goop2s.size(); i++)
 {
   Goop2 goop2 = goop2s.get(i);
   goop2.update();
   goop2.draw();
 }
  
 }
}


// Linking the class to an interactive function 
void mouseClicked()
{
  
  // Location dependent of mouse location 
  goops.add(new Goop(mouseX,mouseY));
  
}



// Combining another mouse based interaction to extend class function
void mouseDragged()
{
  
  goops.add(new Goop(mouseX,mouseY));
  
}



void keyPressed()
{
  
  // Key function applys white background this assists in clearing the particles from the screen 
  if (key == 'c' || key == 'C')
     {
       background(255);
     }
     
  
  // key function to create saved image   
  if (key =='b'||key == 'B')
     {
       saveFrame();
     }      
  
  
  // linking second class function to 'Z' key    
  if (key == 'z' || key == 'Z')
     {
       goop2s.add( new Goop2(mouseX,mouseY));
     }
  
  
  // 'S' key is linked to true boolean to deactivate splashscreen and run the rest of the draw function 
  if (key == 's' || key == 'S')
     {
       screen = true;
       background(255);
     }
  
}