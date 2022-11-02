void rectangle(int x, int y, int i, int l){
rect(x, y, i, l);
}
void setup(){
  size(400, 400);
  fill(0, 255, 0);
  strokeWeight(5);
  rectangle(20, 20, 120, 220);
  fill(255, 0, 255);
  strokeWeight(0);
  ellipse(300, 300, 50, 200);
}

  
