Player P1 = new Player();
float ypos = 740;
float xpos = 400;
float speed = 10;
boolean collision = false;
int level = 1;
int spawn = 0;
void setup(){
  size(800, 800);
  Car[] cars = new Car[50*level];
for(int i = 0; i < 50 * level; i++){
cars[i] = new Car(random(0,600), int(random(0,1)));
}
spawn = 1;
}
void draw(){
  background(0);
  P1.locationupdate();
  P1.nextLevel();
  carmover();
  
}
void carmover(){
  for(int i = 0; i < 50 * level; i++){
cars[i].carmove();
}
}

class Player{
void locationupdate(){
fill(0, 200, 30);
if(keyPressed){
  if(collision == false){
if(key == 'w'){
  ypos -= speed;
}
if(key == 's'){
  ypos += speed;
}
if(key == 'a'){
  xpos -= speed;
}
if(key == 'd'){
  xpos += speed;
}
}
}
rect(xpos, ypos,60, 60);
}
void nextLevel(){
  if(ypos < -40){
  ypos = 840;
  level++;
  }
}
}
class Car{
float cary;
float carx;
int spawned = 0;
int conv;
public Car(float y, int value){
  cary = y;
  if(spawned == 0){
  if(value == 0){
   carx = random(-800, 0);
   conv = 0;
   spawned = 1;
  }
  if(value == 1){
  carx = random(800, 1600);
  conv = 1;
  spawned = 1;
  }
  }
}
void carmove(){
  if(spawned == 1){
  if(conv == 0){
  carx+=5 + level;
  }
  if(conv == 1){
  carx-=5;
  carx-=level;
  }
  rect(carx, cary, 60, 60);
}  
}
}
