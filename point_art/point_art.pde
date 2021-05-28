// 
// take a photo and turn it into pointillism art (art made by small dots)
// or just extract colors from a photo
// Mary Ashley Tenedor
//

PImage photo;

int smallPoint, largePoint;

float dim;

void setup()
{
  size(1200, 630); // dimensions of photo 
  photo = loadImage("photo.jpeg");
  smallPoint = 10;
  largePoint = 70;
  
  imageMode(CENTER);
  noStroke();
  background(255);
  image(photo, int(width/2), int(height/2));
  
  // determine the larger dimension of the photo
  if (photo.width > photo.height)
    dim = photo.width;
  else
    dim = photo.height;
}

void draw()
{
  if (mousePressed)
  {
    // takes a number from 1 to the largest dimension of the photo
    // converts that number to a number between the smallest and largest "point:" size
    // basically determines the size of the "point"
    float pointillize = map(random(0,dim), 0, dim, smallPoint, largePoint); 
    
    // get coordinate from the mouse click
    int x = int(mouseX);
    int y = int(mouseY);
    
    // get color at that coordinate
    color pix = photo.get(x,y);
    
    // all subsequent shapes will be filled with this color from the photo
    fill(pix, 255);
    
    // create the circle
    ellipse(x, y, pointillize, pointillize);
  }
  
  delay(10);
}
