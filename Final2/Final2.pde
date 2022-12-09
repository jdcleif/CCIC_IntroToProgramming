//It's finally done. I didn't know where to put any return statements. Suggestions are welcome!
Player P1 = new Player();
float ypos = 740;
float xpos = 400;
float speed = 5;
boolean collision = true;
int level = 1;
int spawn = 0;
int charge = 0;
int spawned1 = 0;
boolean levelup = false;
int levelupcheck = 0;
int chargemax = 200;
float RiseoverRun = 0;
 Car[] cars = new Car[20];
void setup(){
  size(800, 800);
  strokeWeight(1);

}
void draw(){
  background(0);
  P1.locationupdate();
  P1.nextLevel();
  charge();
  levelcounter();
  x();

 for(int p = 0; p < 20; p++){
   if(spawn < 20){
 cars[p] = new Car(random(0,600), random(0,1));
 spawn++;
   }
 }

for(int i = 0; i < 20; i++){
cars[i].carmove();
cars[i].collision();
}
}
void levelcounter(){
  textSize(40);
  fill(255);
  text("Level: " + level,600,40);
}
void x(){
  textSize(150);
  text("X", 727, 800);
  if(mouseX >= 727 && mouseY >= 700){
    fill(255,0,0);
    text("X", 727, 800);
  }

}
void charge(){
  if(ypos < 400 && charge < chargemax){
   charge+=1;
   
  }
  textSize(20);
   fill(255);
   rect(10, 10, chargemax, 30);
   fill(0, 250, 220);
  rect(10, 10, charge, 30);
}
void mouseClicked(){
  if(charge >= 200){
  collision = false;
  xpos = mouseX - 15;
  ypos = mouseY - 15;
  charge -= 200;
  collision = true;
  }
  if(mouseX >= 727 && mouseY >= 700){
    exit();
  }
}
  
  



class Player{
void locationupdate(){
fill(0, 200, 30);
if(keyPressed){

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
rect(xpos, ypos,30, 30);
}
void nextLevel(){
  if(ypos < -40){
  ypos = 840;
  level++;
  chargemax+=100;
  levelup = true;
  }
}
}
class Car{
float cary;
float carx;
int spawned = 0;
int conv;
public Car(float y, float value){
  cary = y;
  if(spawned == 0){
  if(value < 0.5){
   carx = random(-800, 400);
   conv = 0;
   spawned = 1;
  }
  if(value >= 0.5){
  carx = random(400, 1600);
  conv = 1;
  spawned = 1;
  }
  }
}
void carmove(){
  if(spawned == 1){
  if(conv == 0){
  carx+=1 + level;
  }
  if(conv == 1){
  carx-=1;
  carx-=level;
  }
  if(conv == 0 && carx > 800){
    carx = -60;
  }
  if(conv == 1 && carx < -60){
    carx = 800;
  }
  if(levelup == true && conv == 0){
    carx = random(-800, 400);
    cary = random(0,600);
    levelupcheck++;
  }
  if(levelup == true && conv == 1){
    carx = random(400, 1600);
    cary = random(0,600);
    levelupcheck++;
  }
  if(levelupcheck==20){
    levelup = false;
    levelupcheck = 0;
  }
    
  fill(255,255,255);
  rect(carx, cary, 60, 60);
}  
}
void collision(){
  if(collision == true){
  if(((carx - xpos) < 30 && (xpos - carx) < 60) && ((cary - ypos) < 30 && (ypos - cary) < 60)){
    level = 1;
    chargemax = 200;
    charge = 0;
    ypos = 740;
    xpos = 400;
    levelup = true;
  }
  }
}
}
