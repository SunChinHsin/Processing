import ddf.minim.*;
Minim minim;
AudioPlayer player;

int x=0;
int y=0;
int speed=0;

float x1=0;
float y1=0;
float speed1=0;

int score=0;
void setup()
{
  size(800,400);
  background(255,255,255);
  x1=0;
  y1=random(10,350);
  speed1=random(2,8);
  fill(0,0,0);
  textSize(30);
}

void draw()
{
  background(255,255,255);
  text(score,750,30);
  ellipse(x,y,10,10);
  y=y-speed;
  rect(mouseX,380,40,40);

  x1=x1+speed1;
  ellipse(x1,y1,50,50);

  if (x1>800)
  {
    x1=0;
    y1=random(0,350);
    speed1=random(2,8);
  }

  if (dist(x,y,x1,y1)<30)
  {
   minim = new Minim(this);
   player = minim.loadFile("explosion1.mp3");
   player.play();
   
    score=score+10;
    x1=0;
    y1=random(0,350);
    speed1=random(2,8);    
  }
}



void mousePressed()
{
   x=mouseX;  
   y=400;
   speed=10;
   minim = new Minim(this);
   player = minim.loadFile("laser3.mp3");
   player.play();
}
