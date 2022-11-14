String player1 = "";
String player2 = "";
int game = 0;
int order = 2;
String[][] gameboard = {{"X", "", ""},
                        {"", "", ""},
                        {"", "",""}};
void setup(){
  size(400, 400);
  background(0);
}
void draw(){
  pick();
  drawgameboard();
}
void drawgameboard(){
  if(game == 1){
  strokeWeight(10);
  stroke(255, 255, 255);
  line(133, 0, 133, 400);
  line(266, 0, 266, 400);
  line(0, 133, 400, 133);
  line(0, 266, 400, 266);
  for(int x = 0; x < gameboard.length; x++){
    for(int y = 0; y < gameboard[0].length; y++){
      textSize(66);
      if(gameboard[x][y] == "X"){
        fill(255,255,255);
        text("X", x * 66.5, y* 66.5);
      }
    }
  }
}
}
void pick(){
  if(game == 0){
    fill(255,255,255);
  textSize(20);
  text("Choose X or O", 125, 66.5);
  text("Player 1: " + player1, 20, 150);
  text("Player 2: " + player2, 300, 150);
  if(order > 0){
  if(keyPressed){
  if(key == 'x'){
    if(order == 2){
      player1 = "X";
      key = 0;
      order--;
    }
    else if(order == 1){
      player2 = "X";
      key = 0;
      order--;
      game = 1;
    }
  }
  if(key == 'o'){
    if(order == 2){
      player1 = "O";
      key = 0;
      order--;
    }
    if(order == 1){
      player2 = "O";
      key = 0;
      order--;
      game = 1;
    }
  }
  }
}
  }
}
