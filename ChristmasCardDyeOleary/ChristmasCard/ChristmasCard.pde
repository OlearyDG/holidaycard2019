Snow snowball;
Santa santa;
House house;
Snowman sman;
PFont font;
PFont normal;
ArrayList<Snow>snowList;
void setup(){
size(600,400);
house = new House();
santa = new Santa();
snowball=new Snow();
sman=new Snowman();
snowList=new ArrayList<Snow>();
int m=0;
while(m<101){
snowList.add(new Snow());
m++;
}
font =createFont("Precious.ttf",50);
normal=createFont("Times New Roman",12);
}
void draw(){
  background(0);
  textSize(50);
  if(second()>=30){
    fill(255,0,0);
  }else{
    fill(0,255,0);
  }
  textFont(font);
  text("Merry Christmas!",23,80);
  house.show();
  snowball.show();
  for(Snow x: snowList){
  x.show();
  fill(255,0,0);
  }
   santa.show();
     house.show();
     sman.show();
     fill(0,255,0);
     //textSize(12);
     //textFont(normal);
     //text("x: "+mouseX+" y: "+mouseY,mouseX,mouseY);
}
