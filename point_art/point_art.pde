// pointillism art

PImage photo;

int smallPoint, largePoint;

void setup()
{
  size(1199, 630);
  photo = loadimage("photo.jpeg");
  smallPoint = 5;
  largePoint = 50;
  imageMode(CENTER);
  noStroke();
  background(255);
  image(photo, 600, 894);
}

void()
{
  if (mousePressed)
  {
    image(photo, 600, 894);
  }
  else
  {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x = int(random(photo.width));
    int y = int(random(photo.heigh));
    
    color pix = photo.get(x,y);
    
    fill(pix, 255);
    
    ellipse(x, y, pointillize, pointillize);
  }
}
