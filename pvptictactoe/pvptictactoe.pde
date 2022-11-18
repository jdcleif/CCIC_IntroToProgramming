String player1 = "";
String player2 = "";
int game = 0;
int tie = 0;
int order = 1;
String[][] gameboard = {{"", "", ""},
                        {"", "", ""},
                        {"", "",""}};                  
void setup(){
  size(400, 400);
  background(0);
}
void draw(){
  pick();
  drawgameboard();
  checker();
}
void drawgameboard(){
  if(game == 1){
  strokeWeight(10);
  stroke(255, 255, 255);
  line(133, 0, 133, 400);
  line(266, 0, 266, 400);
  line(0, 133, 400, 133);
  line(0, 266, 400, 266);
  for(int y = 0; y < gameboard.length; y++){
    for(int x = 0; x < gameboard[0].length; x++){
      textSize(200);
      if(gameboard[y][x] != ""){
        fill(255,255,255);
        text(gameboard[y][x], ((400/3 * x) + (400/3) * 0.5) - 50, ((400/3 * y) + (400/3) * 0.5) + 61);
      }
    }
  }
}
}
void mouseClicked(){
  if(game == 1){
    makemove();
  }
}
void checker(){
  if((gameboard[0][0] == "X" && gameboard[0][1] == "X" && gameboard[0][2] == "X") || (gameboard[1][0] == "X" && gameboard[1][1] == "X" && gameboard[1][2] == "X") || (gameboard[2][0] == "X" && gameboard[2][1] == "X" && gameboard[2][2] == "X") || (gameboard[0][0] == "X" && gameboard[1][0] == "X" && gameboard[2][0] == "X") || (gameboard[0][1] == "X" && gameboard[1][1] == "X" && gameboard[2][1] == "X") || (gameboard[0][2] == "X" && gameboard[1][2] == "X" && gameboard[2][2] == "X") || (gameboard[0][0] == "X" && gameboard[1][1] == "X" && gameboard[2][2] == "X") || (gameboard[2][0] == "X" && gameboard[1][1] == "X" && gameboard[0][2] == "X")){
    if(player1 == "X"){
      game = 2;
      textSize(30);
      clear();
      text("PlAYER 1 WINS", 66.5, 66.5);
    }
    else if(player2 == "X"){
      game = 2;
      textSize(30);
      clear();
      text("PLAYER 2 WINS", 66.5, 66.5);
    }
    }
     if((gameboard[0][0] == "O" && gameboard[0][1] == "O" && gameboard[0][2] == "O") || (gameboard[1][0] == "O" && gameboard[1][1] == "O" && gameboard[1][2] == "O") || (gameboard[2][0] == "O" && gameboard[2][1] == "O" && gameboard[2][2] == "O") || (gameboard[0][0] == "O" && gameboard[1][0] == "O" && gameboard[2][0] == "O") || (gameboard[0][1] == "O" && gameboard[1][1] == "O" && gameboard[2][1] == "O") || (gameboard[0][2] == "O" && gameboard[1][2] == "O" && gameboard[2][2] == "O") || (gameboard[0][0] == "O" && gameboard[1][1] == "O" && gameboard[2][2] == "O") || (gameboard[2][0] == "O" && gameboard[1][1] == "O" && gameboard[0][2] == "O")){
    if(player1 == "O"){
      game = 2;
      clear();
      textSize(100);
      text("PlAYER 1 WINS", 66.5, 66.5);
    }
    else if(player2 == "O"){
      game = 2;
      clear();
      textSize(100);
      text("PLAYER 2 WINS", 66.5, 66.5);
    }
    }
    for(int c = 0; c < gameboard.length; c++){
    for(int q = 0; q < gameboard[0].length; q++){
        if(gameboard[c][q] != ""){
          tie++;
         }
      }
    }
    if(game == 1 && tie == 9){
    clear();
    game = 3;
    textSize(100);
     text("TIE", 120, 100);
    }
    else if(game == 1 && tie < 9){
    tie =0;
    }
        
}
void makemove(){
if(game == 1){
if(order == 1){
if(mouseX > 0 && mouseX < 133 && mouseY > 0 && mouseY < 133 && gameboard[0][0] == ""){
gameboard[0][0] = player1;
order = 2;
}
if(mouseX > 133 && mouseX < 266 && mouseY > 0 && mouseY < 133 && gameboard[0][1] == ""){
gameboard[0][1] = player1;
order = 2;
}
if(mouseX > 266 && mouseX < 400 && mouseY > 0 && mouseY < 133 && gameboard[0][2] == ""){
gameboard[0][2] = player1;
order = 2;
}
if(mouseX > 0 && mouseX < 133 && mouseY > 133 && mouseY < 266 && gameboard[1][0] == ""){
gameboard[1][0] = player1;
order = 2;
}
if(mouseX > 133 && mouseX < 266 && mouseY > 133 && mouseY < 266 && gameboard[1][1] == ""){
gameboard[1][1] = player1;
order = 2;
}
if(mouseX > 266 && mouseX < 400 && mouseY > 133 && mouseY < 266 && gameboard[1][2] == ""){
gameboard[1][2] = player1;
order = 2;
}
if(mouseX > 0 && mouseX < 133 && mouseY > 266 && mouseY < 400 && gameboard[2][0] == ""){
gameboard[2][0] = player1;
order = 2;
}
if(mouseX > 133 && mouseX < 266 && mouseY > 266 && mouseY < 400 && gameboard[2][1] == ""){
gameboard[2][1] = player1;
order = 2;
}
if(mouseX > 266 && mouseX < 400 && mouseY >266 && mouseY < 400 && gameboard[2][2] == ""){
gameboard[2][2] = player1;
order = 2;
}
}
else if(order ==2){
  if(mouseX > 0 && mouseX < 133 && mouseY > 0 && mouseY < 133 && gameboard[0][0] == ""){
gameboard[0][0] = player2;
order = 1;
}
if(mouseX > 133 && mouseX < 266 && mouseY > 0 && mouseY < 133 && gameboard[0][1] == ""){
gameboard[0][1] = player2;
order = 1;
}
if(mouseX > 266 && mouseX < 400 && mouseY > 0 && mouseY < 133 && gameboard[0][2] == ""){
gameboard[0][2] = player2;
order = 1;
}
if(mouseX > 0 && mouseX < 133 && mouseY > 133 && mouseY < 266 && gameboard[1][0] == ""){
gameboard[1][0] = player2;
order = 1;
}
if(mouseX > 133 && mouseX < 266 && mouseY > 133 && mouseY < 266 && gameboard[1][1] == ""){
gameboard[1][1] = player2;
order = 1;
}
if(mouseX > 266 && mouseX < 400 && mouseY > 133 && mouseY < 266 && gameboard[1][2] == ""){
gameboard[1][2] = player2;
order = 1;
}
if(mouseX > 0 && mouseX < 133 && mouseY > 266 && mouseY < 400 && gameboard[2][0] == ""){
gameboard[2][0] = player2;
order = 1;
}
if(mouseX > 133 && mouseX < 266 && mouseY > 266 && mouseY < 400 && gameboard[2][1] == ""){
gameboard[2][1] = player2;
order = 1;
}
if(mouseX > 266 && mouseX < 400 && mouseY >266 && mouseY < 400 && gameboard[2][2] == ""){
gameboard[2][2] = player2;
order = 1;
}
}
}
}
void pick(){
  if(game == 0){
    fill(255,255,255);
  textSize(20);
  text("Choose X or O", 125, 66.5);
  if(keyPressed){
  if(key == 'x'){
    player1 = "X";
    player2 = "O";
    delay(500);
    clear();
    game = 1;
    }
  else if(key == 'o'){
    player1 = "O";
    player2 = "X";
    delay(500);
    clear();
    game = 1;
    }
  }
  }
}
