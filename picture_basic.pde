PImage my1,my2,my3;
int x=0;

void setup()
{
  size(800,800);
  background(255);
  my1 = loadImage("image1.png");
  my2 = loadImage("image2.png");
  my3 = loadImage("image3.png");
}

void draw()
{
  background(255);
  image(my1,100,100,80,80);
  image(my2,400,100,80,80);
  image(my3,700,100,80,80);

}
