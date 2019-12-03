Snow snowball;
Santa santa;
House house;
Snowman sman;
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
}
void draw(){
  background(0);
  house.show();
  snowball.show();
  for(Snow x: snowList){
  x.show();
  fill(255,0,0);
  }
   santa.show();
     house.show();
     sman.show();
     text("x: "+mouseX+" y: "+mouseY,mouseX,mouseY);
}
