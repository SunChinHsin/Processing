int x=0;
int y=400;
int direction=1; //go right

void setup() {
  size(800,800);
  smooth();
  frameRate(10);
}


void draw() {
   background(0);
   if (x==800)
   { direction=-1;//go left }
   if (x==0)
   { direction=1;//go right  }
   x+=direction*50; //if go left 1*50=50, if go right  -1*50=-50
   ellipse(x,y,100,100);
}
