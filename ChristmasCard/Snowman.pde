public class Snowman{
int x=0;
PShape hat;
PImage snowbot;
PImage snowmid;
PImage snowhead;
PImage stickl;
PImage stickr;
boolean spin=true;
int y=235;
int hy=207;
int spn;
int time;
boolean timec=false;
public Snowman(){
  hat=createShape(GROUP);
  PShape top=createShape(RECT,25,0,20,30);
  top.setFill(55);
  PShape brim=createShape(RECT,20,20,30,10);
  brim.setFill(55);
 hat.addChild(top);
 hat.addChild(brim);
 snowbot=loadImage("snowbot.png");
 snowmid=loadImage("snowmid.png");
 snowhead=loadImage("snowhead.png");
 stickl=loadImage("stickl.png");
 stickr=loadImage("stickr.png");
}
void show(){
  if(millis()>=time){
  spin=true;
  }
  image(snowbot,340,300,50,50);
  image(stickl,300,260,60,30);
image(stickr,365,260,60,30);
image(snowmid,345,265,40,40);
  if(!spin){
image(snowhead,350,235,30,30);
shape(hat,329,207);
  }else if(spin){
  spinDance();
  }
}
void spinDance(){
  if(timec==false){
    time=millis()+8000;
    timec=true;
  }
  if(spn!=4){
  if(y>=43){
  image(snowhead,350,y,30,30);
  shape(hat,329,y-28);
  y-=6;
  }
  if(y<=43){
  pushMatrix();
  imageMode(CENTER);
  translate(365,y+15);
rotate(radians(x));
image(snowhead,0,0,30,30);
rotate(radians(-x));
shape(hat,-36,-43);
 imageMode(CENTER);
x+=10;
if(x>=360){
x=0;
spn++;
hy=y;
}
imageMode(CORNER);
popMatrix();
fill(112,241,152);
}
}else{
  if(y<235){
  image(snowhead,350,y,30,30);
  shape(hat,329,hy-28);
  y+=6;
  hy+=6;
  if(y>=235){
  x=0;
  spn=0;
  y=235;
  hy=207;
  time=millis()+8000;
  timec=false;
  spin=false;
  }
  }
}
}
}
