Ball g1=new Ball();
Ball g2=new Ball();
Ball g3=new Ball();
Ball me=new Ball();
int score=0;

class Ball
{
  float bsize;  //the size  of ball
  float r;      //red   color of ball
  float g;      //green color of ball
  float b;      //blue  color of ball
  float a;      //alpha color of ball
  PVector position;
  float xgo;    //move in x
  float ygo;    //move in y
  
  void born(float in1,float in2,float in3,float in4,float in5,float in6,float in7)
  {
    bsize=in1; //set size
    r=in2;     //set color and alpha
    g=in3;
    b=in4;
    a=in5;
    position=new PVector(in6,in7);
    xgo=random(-10,10);
    ygo=random(-10,10);
    
    noStroke();
    fill(r,g,b,a);
    ellipse(position.x,position.y,bsize,bsize);//draw the ball
  }
  
  void auto()
  {
    if ((position.x>500) || (position.x<0)) 
    {
      xgo=xgo*-1;
    }
    if ((position.y>500) || (position.y<0)) 
    {
      ygo=ygo*-1;
    }

    position.add(xgo,0,0);
    position.add(0,ygo,0);
    
    noStroke();
    fill(r,g,b,a);
    ellipse(position.x,position.y,bsize,bsize);//draw the ball    
  }

  void move()
  {
    position.x=mouseX;
    position.y=mouseY;
    
    noStroke();
    fill(r,g,b,a);
    ellipse(position.x,position.y,bsize,bsize);//draw the ball 
  }
}

void setup()
{
  size(500,500);
  background(#ffffff);
  g1.born(50,random(255),random(255),random(255),random(255),random(500),random(500));
  g2.born(100,random(255),random(255),random(255),random(255),random(500),random(500));
  g3.born(30,random(255),random(255),random(255),random(255),random(500),random(500));
  me.born(50,0,0,0,255,mouseX,mouseY);
  textSize(20);
}

void draw()
{
  background(#ffffff);
  score=score+1;
  text("score:"+score,380,460);
  g1.auto();
  g2.auto();
  g3.auto();
  me.move();
  
  if (PVector.dist(g1.position,me.position)<50)
    noLoop();
  if (PVector.dist(g2.position,me.position)<75)
    noLoop();
  if (PVector.dist(g3.position,me.position)<40)
    noLoop(); 
  
}
