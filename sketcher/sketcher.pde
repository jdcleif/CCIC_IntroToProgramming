void setup(){
size(400, 400);
color(255, 0, 0);
rect(0, 0, 50, 50);
color(0, 255, 0);
}
int clicknumber = 0;
int x = 0;
int y = 0;
int i = 0;
int l = 0;
int c = 0;
void draw(){
}
void mouseClicked(){
  if(clicknumber == 0){
  x = mouseX;
  y = mouseY;
  clicknumber = 1;
  }
  else if(clicknumber == 1){
  i = mouseX;
  l = mouseY;
  line(x, y, i, l);
  clicknumber = 0;
  }
  if(mouseX <= 50 || mouseY <= 50){
  c++;
}
}


 
