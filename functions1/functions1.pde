void setup(){
wink();
drawSmiley();
delay(1);
help();
open();
drawSmiley();
delay(1);
help();
wink();
drawSmiley();
delay(1);
help();
open();
drawSmiley();
delay(1);
help();
wink();
drawSmiley();
delay(1);
help();
open();
drawSmiley();
delay(1);
help();

}
String[][] face = {{" ", "*", "   ", "*", " "},
                   {" ", " ", " *", " ", " "},
                   {"|", "_ ", "_ ", "_", "|"}};
void drawSmiley(){
for(int x = 0; x < face.length; x++){
  for(int y = 0; y < face[x].length; y++){
    print(face[x][y]);
  }
  println("");
}
}
void wink(){
  int test = 0;
  for(int i = 0; i < face.length; i++){
    for(int l = 0; l < face[i].length; l++){
    if(face[i][l] == "*"){
    if(test == 0){
      test++;
    }
    else if(test == 1)
    face[i][l] = "-";
    }
  }
}
}
void open(){
  for(int i = 0; i < face.length; i++){
    for(int l = 0; l < face[i].length; l++){
    if(face[i][l] == "-"){
    face[i][l] = "*";
    }
    }
  }
}
void help(){
  for(int loop = 0; loop < 10; loop++){
    println("");
  }
}
