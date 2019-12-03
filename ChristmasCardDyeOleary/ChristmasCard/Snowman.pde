public class Snowman{
int x=0;
PShape hat;
PImage snowbot;
PImage snowmid;
PImage snowhead;
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
}
void show(){
  pushMatrix();
  ellipseMode(CENTER);
  translate(250,50);

  ellipseMode(CENTER);
x+=9;
if(x>360){
x=0;
}
ellipseMode(CORNER);
popMatrix();
fill(112,241,152);
}
}
