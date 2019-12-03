class Snow implements snowint{
 int x,y=0,speed,xspeed,oldy;
  public Snow(){
    x=(int)(Math.random()*600)+1;
    y=(int)(Math.random()*-600)-1;
    oldy=y;
  speed=(int)(Math.random()*2)+1;
  xspeed=(int)(Math.random()*2)+1;
  }

void show(){
fill(255);
move();
ellipse(x,y,10,10);
rect(-1,349,600,400);
}
void move(){
y+=speed;
if(y>=400){
y=oldy;
x=(int)(Math.random()*600)+1;
}
//x+=xspeed;
//if(Math.random()<.02){
//xspeed*=-1;
//}
if(x>=600){
x=10;
}
}

}
