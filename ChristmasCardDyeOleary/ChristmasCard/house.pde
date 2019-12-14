public class House{
ArrayList<Light> lights=new ArrayList<Light>();
  public House(){    
    int c=0;
for(int i=18;i<=190;i+=6){
lights.add(new Light(i,200,c%2==0));
c++;
}
c=0;
for(int i=193;i<=288;i+=6){
lights.add(new Light(i,260,c%2==0));
c++;
}
  }

void show(){
//house box
fill(255,247,172);
rect(20,200,170,150);
//garage
rect(190,260,100,90);
//garage door
fill(132,130,135);
rect(210,280,60,70);
//windows
//window left
fill(123,207,255);
rect(40,230,41,41);
fill(0);
rect(61,230,1,40);
rect(40,251,40,1);
//window right
fill(129,207,255);
rect(126,230,41,41);
fill(0);
rect(147,230,1,40);
rect(126,251,40,1);
//door
fill(135,90,85);
rect(83,290,40,60);
fill(0);
ellipse(115,320,5,5);
//roof
fill(135,90,85);
triangle(10,200,105,150,200,200);
//garage roof
fill(135,90,85);
triangle(190,260, 190,220,295,260);
//lights
for(Light x:lights){
x.show();
}
}

}
