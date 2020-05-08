void setup(){
  background(255);
  size(800,800);
  fill(0); rect(0,0,50,50);
  fill(255); rect(0,50,50,50);
  fill(255,0,0); rect(0,100,50,50);
  fill(255,127,39); rect(0,150,50,50);
  fill(255,200,0); rect(0,200,50,50);
  fill(0,180,0); rect(0,250,50,50);
  fill(0,150,150); rect(0,300,50,50);
  fill(163,64,168); rect(0,350,50,50);
 
}
void draw(){

  int www=5;
  if(mousePressed && mouseX<50 && mouseY<50) stroke(0);
  else if(mousePressed && mouseX<50 && mouseY<100) stroke(255);
  else if(mousePressed && mouseX<50 && mouseY<150) stroke(255,0,0);
  else if(mousePressed && mouseX<50 && mouseY<200) stroke(255,127,39);
  else if(mousePressed && mouseX<50 && mouseY<250) stroke(255,200,0);
  else if(mousePressed && mouseX<50 && mouseY<300) stroke(0,180,0);
  else if(mousePressed && mouseX<50 && mouseY<350) stroke(0,150,150);
  else if(mousePressed && mouseX<50 && mouseY<400) stroke(163,64,168);
  else if(mousePressed)  line(mouseX, mouseY, pmouseX, pmouseY);
} 
