int startX=0;
int startY=0;
int endX=0;
int endY=0;
void setup()
{
  background(200,200,200);
  size(500,500);
  noStroke();
  ellipse(250,250,300,300);
}
void draw()
{
  translate(250,250);
  rotate((float)Math.random()*2*PI);
  while(dist(0,0,endX,endY)<140){
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*19)-9;
    stroke(300,0,0);
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
  noStroke();
  fill(97, 184, 253);
  ellipse(0,0,140,140);
  fill(0);
  ellipse(0,0,90,90);
}
void mousePressed()
{
  startX=startY=endX=endY=0;
  redraw();
}
