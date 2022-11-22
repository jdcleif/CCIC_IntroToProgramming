Player P1 = new Player();
Car l1 = new Car();
Car l2 = new Car();
Car l3 = new Car();
Car l4 = new Car();
Car l5 = new Car();
Car l6 = new Car();
Car l7 = new Car();
float ypos = 740;
float xpos = 400;
float speed = 10;
boolean collision = false;
int level = 1;
void setup(){
  size(800, 800);
}
void draw(){
  background(0);
  P1.locationupdate();
  P1.nextLevel();
  l1.Carupdate(0,0);
  l2.Carupdate(100,1);
  l3.Carupdate(200,0);
  l4.Carupdate(300,1);
  l5.Carupdate(400,0);
  l6.Carupdate(500,1);
  l7.Carupdate(600,0);
  
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
int spawned = 0;
int carx = 0;
void Carupdate(int cary, int spawnloco){
  if(spawned == 0){
if(spawnloco == 0){
  carx = 0;
  spawned = 1;
}
if(spawnloco == 1){
  if(carx < 800){
  carx = 760;
  spawned = 1;
  }
}
}
fill(255,255,255);
if(spawnloco == 0){
  if(carx < 800){
  carx += 5 + level;
}
else{
  carx = -40;
}
}
if(spawnloco == 1){
  if(carx > -40){
  carx -= 5;
  carx -= level;
  }
  else{
    carx = 800;
  }
}
rect(carx, cary, 60, 60);
if(((xpos - carx) < 60) && ((carx - xpos) < 60) && ((ypos - cary) < 60) && ((cary - ypos) < 60)){
  exit();
}
}
}
