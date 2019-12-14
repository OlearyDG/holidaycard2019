public class Light{
  int x,y;
  boolean c;
public Light(int x, int y,boolean c){
this.x=x;
this.y=y;
this.c=c;
}
public void show(){
  if(second()%2==0&&c){
fill(255,0,0);
  }else if (second()%2==0&&c!=true){
    fill(0,255,0);
  }else if(c){
   fill(0,255,0);
  }else{
  fill(255,0,0);
  }
ellipse(x,y,4,4);
}
}
