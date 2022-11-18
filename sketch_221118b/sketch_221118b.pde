int x = 400-35;
int y = 800-70;
int carx = 0;
float cary = 600;
void setup(){
  size(800, 800);
  background(0);
}
void draw(){
    background(0);
    movement();
    car();
}

void movement(){
  fill(0, 255, 0);
  rect(x, y, 70, 70);
  if(keyPressed){
  if(key == 'w'){
    y -= 7;
  }
  if(key == 's'){
    y += 7;
  }
  if(key == 'a'){
    x -= 7;
  }
  if(key == 'd'){
    x += 7;
  }
}
}
void car(){
  fill(255, 255, 255);
  carx += 5;
  rect(carx, cary, 70, 70);
  if(carx > 800){
  carx = 0;
  cary = random(0, 600);
}
}
