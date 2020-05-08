int x=0;
void setup()
{
  size(500,500);
  background(#FCFDFF);
  noStroke();
  frameRate(5);
}

void draw()
{
   background(#FCFDFF);
   fill(random(0,255),random(0,255),random(0,255),100);
   ellipse(random(0,500),random(0,500),50,50);   
}

void mousePressed()
{
  background(#FCFDFF);
}
