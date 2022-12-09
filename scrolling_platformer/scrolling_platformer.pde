//Make sure to add different collision states for ease of management.
int generator = 0;
boolean floortouch = false;
int floortouch1 = 0;
void setup(){
  size(800, 800);
}
String[][] map = {{"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"","[]","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"","","","","","","","","[]","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"","","","[]","[]","[]","","","[]","[]","[]","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",},
                  {"[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]","[]",}};
cubes[][] blocks = new cubes[map.length][map[0].length];
int x = 0;
int y  = 400;
int xvelocity = 360;
int yvelocity = 360;
int playersize = 40;
void movement(){
  
  fill(0,0,255);
  rect(xvelocity, yvelocity, 40, 40);
  if(keyPressed){
    if(key == 'w'){
      y+=5;
    }
    if(key == 's'){
      y-=5;
    }
    if(key == 'a'){
      x+=5;
    }
    if(key == 'd'){
      x-=5;
    }
  }
}
       
      
void mapGen(){
for(int l = 0; l < map.length; l++){
  for(int p = 0; p<map[l].length; p++){
    blocks[l][p].collision();
      blocks[l][p].update();
      
}
  }
}

void draw(){
  background(0);
  
  for(int i = 0; i < map.length; i++){
    for(int q = 0; q < map[i].length; q++){
      if(generator < map.length * map[0].length){
        blocks[i][q] = new cubes(map[i][q], i, q);
        generator++;
      }
    }
}
mapGen();
  movement();
}
class cubes{
  String type;
  float loco1;
  float loco2;
  float sloco1;
  float sloco2;
  public cubes(String para, int loco12, int loco22){
    type = para;
    loco1 = loco22;
    loco2 = loco12;
  }
  void collision(){
    if((sloco2 - yvelocity) < 80){
      floortouch = true;
      floortouch1 = 1;
    }
    else if((sloco2 - yvelocity) < 80 && floortouch1 == 0){
      floortouch = false;
    }
    if(floortouch == false){
     y--; 
    }
  }
  void update(){
    if(type == "[]"){
      fill(255);
    rect(x + (loco1 * 40), y + (loco2 * 40), 40, 40);
    sloco1 = x + (loco1 *40);
    sloco2 = y + (loco2 * 40);
  }
}
}
