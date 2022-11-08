//MOVE THE COMPUTERMOVE FUNCTION LOWER ON THE MOUSECLICKED
String[][] gameBoard = { {"", "", ""},
                         {"", "", ""},
                         {"", "", ""}};
float [] computerloco = {0, 0};                         
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
void mouseClicked() {
  if(mouseY <= 133){
  if(mouseX <= 133){
  if(gameBoard[0][0] == ""){
  println("0, 0");
  gameBoard[0][0] = "X";
  line(0, 0, 133, 133);
  line(0, 133, 133, 0);
  computerMove();
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
  computerMove();
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
  computerMove();
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
  computerMove();
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
  computerMove();
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
  computerMove();
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
  computerMove();
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
  computerMove();
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
  computerMove();
  }
  }
  }
}
void computerMove(){
  int didit = 1;
  while(didit==1){
    computerloco[0] = random(0,2);
    computerloco[1] = random(0,2);
    int x = 0;
    int y = 0;
    if(computerloco[0] < 0.5){
    x = 0;
    }
    else if(computerloco[0] >= 0.5 && computerloco[0] < 1.5){
    x = 1;}
    else if(computerloco[0] >= 1.5){
    x = 2;
  }
  if(computerloco[1] < 0.5){
    y = 0;
    }
    else if(computerloco[1] >= 0.5 && computerloco[1] < 1.5){
    y = 1;}
    else if(computerloco[1] >= 1.5){
    y = 2;
  }
  if(gameBoard[x][y] == "X" || gameBoard[x][y] == "O"){
    didit = 1;
  }
  else if(gameBoard[x][y] == ""){
    gameBoard[x][y] = "O";
    didit = 0;
    println("Move, " + x +", " + y);
    if(x == 0){
      if(y == 0){
        ellipse(66.5, 66.5, 66.5, 66.5);
      }
    }
    if(x == 1){
      if(y == 0){
        ellipse(199.5, 66.5, 66.5, 66.5);
      }
    }
    if(x == 0){
      if(y == 0){
        ellipse(66.5, 66.5, 66.5, 66.5);
      }
    }
    if(x == 2){
      if(y == 0){
        ellipse(332.5, 66.5, 66.5, 66.5);
      }
    }
    if(x == 0){
      if(y == 1){
        ellipse(66.5, 199.5, 66.5, 66.5);
      }
    }
    if(x == 1){
      if(y == 1){
        ellipse(199.5, 199.5, 66.5, 66.5);
      }
    }
    if(x == 2){
      if(y == 1){
        ellipse(322.5, 199.5, 66.5, 66.5);
      }
    }
    if(x == 0){
      if(y == 2){
        ellipse(66.5, 322.5, 66.5, 66.5);
      }
    }
    if(x == 1){
      if(y == 2){
        ellipse(199.5, 322.5, 66.5, 66.5);
      }
    }
    if(x == 2){
      if(y == 2){
        ellipse(322.5, 322.5, 66.5, 66.5);
      }
    }
  }
  }
  for(int i = 0; i < gameBoard.length; i++){
    for(int l = 0; l < gameBoard[i].length-1; i++){
      print("["+gameBoard[i][l]+"]");
    }
    println("");
  }
}
