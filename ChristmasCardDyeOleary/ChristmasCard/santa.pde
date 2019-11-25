
public class Santa{
  PImage santa;
  int x ,y;
  
  public Santa(){
    santa = loadImage("santa.png");
    y=80;
    x=-150;
  }
  void move(){
    x+=2;
    if (x>600){
      x=-150;
    }
  }
  void show(){
    move();
    image(santa,x,y,150,95);
  }
}
