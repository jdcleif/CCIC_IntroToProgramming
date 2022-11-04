void setup(){
  size(400, 400);
  background(0,0,0);
  fill(255,255,255);
}
int x=0;
int speed = 1;
float[] color1 = {255, 0, 0};
void draw(){
x=x+speed;
fill(color1[0], color1[1], color1[2]);
color1[1]+=1.275;
color1[2]+=1.275;
rect(x, 100, 200, 200);
if(x==200){
  speed=speed *- 1;
  color1[1]=0;
  color1[2]=0;
}
else if(x==0){
  speed=speed *- 1;
  color1[1]=0;
  color1[2]=0;
  
  
}
  }
