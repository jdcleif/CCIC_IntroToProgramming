String[][] gameBoard = { {"", "", ""},
                         {"", "", ""},
                         {"", "", ""}};
int turn = 0;                         
void setup(){
  size(400,400);
}
void draw(){
 drawGameBoard();
} 
void drawGameBoard(){
  strokeWeight(10);
line(133, 0, 133, 400);
line(266, 0, 266, 400);
line(0, 133, 400, 133);
line(0, 266, 400, 266);
}
if(turn = 0){
void mouseClicked() {
  if(mouseY <= 133){
  if(mouseX <= 133){
  if(gameBoard[0][0] == ""){
  println("0, 0");
  gameBoard[0][0] = "X";
  line(0, 0, 133, 133);
  line(0, 133, 133, 0);
  }
  }
  }
  if(mouseY <= 133){
  if(mouseX > 133 && mouseX < 266){
  if(gameBoard[0][1] == ""){
  println("0, 1");
  gameBoard[0][1] = "X";
  line(133, 0, 266, 133);
  line(133, 133, 266, 0);
  }
  }
  } 
  if(mouseY <= 133){
  if(mouseX > 266 && mouseX < 400){
  if(gameBoard[0][2] == ""){
  println("0, 2");
  gameBoard[0][2] = "X";
  line(266, 0, 400, 133);
  line(266, 133, 400, 0);
  }
  }
  } 
  if(mouseY < 266 && mouseY > 133){
  if(mouseX <= 133){
  if(gameBoard[1][0] == ""){
  println("1, 0");
  gameBoard[1][0] = "X";
  line(0, 133, 133, 266);
  line(0, 266, 133, 133);
  }
  }
  }
  if(mouseY < 266 && mouseY > 133){
  if(mouseX > 133 && mouseX < 266){
  if(gameBoard[1][1] == ""){
  println("1, 1");
  gameBoard[1][1] = "X";
  line(133, 133, 266, 266);
  line(133, 266, 266, 133);
  }
  }
  }  
  if(mouseY < 266 && mouseY > 133){
  if(mouseX > 266 && mouseX < 400){
  if(gameBoard[1][2] == ""){
  println("1, 2");
  gameBoard[1][2] = "X";
  line(266, 133, 400, 266);
  line(266, 266, 400, 133);
  }
  }
  }  
  if(mouseY < 400 && mouseY > 266){
  if(mouseX <= 133){
  if(gameBoard[2][0] == ""){
  println("2, 0");
  gameBoard[2][0] = "X";
  line(0, 266, 133, 400);
  line(0, 400, 133, 266);
  }
  }
  }
  if(mouseY < 400 && mouseY > 266){
  if(mouseX < 266 && mouseX > 133){
  if(gameBoard[2][1] == ""){
  println("2, 1");
  gameBoard[2][1] = "X";
  line(133, 266, 266, 400);
  line(133, 400, 266, 266);
  }
  }
  }
  if(mouseY < 400 && mouseY > 266){
  if(mouseX >266 && mouseX < 400){
  if(gameBoard[2][2] == ""){
  println("2, 2");
  gameBoard[2][2] = "X";
  line(266, 266, 400, 400);
  line(266, 400, 400, 266);
  }
  }
  }
  
}
}
void computerMove
