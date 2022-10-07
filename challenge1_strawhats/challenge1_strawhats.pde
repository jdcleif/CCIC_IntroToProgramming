String[] moves = {"Down", "Down", "Right"};
String[][] maze = new String[4][5];
int xlocation = 0;
int ylocation = 0;
for(int r = 0; r < 4; r++){
for(int l = 0; l < 5; l++){
  maze[r][l] = " ";
}
}
for(int x = 0; x<moves.length; x++){
  if(moves[x] == "Up"){
    ylocation--;
  }
  else if(moves[x] == "Down"){
    ylocation++;}
    else if(moves[x] == "Right"){
      xlocation++;}
      else if(moves[x] == "Left"){
        xlocation--;}
}
if(xlocation <= 5 && ylocation <= 4 && xlocation >= 0 && ylocation <= 5){
maze[ylocation][xlocation] = "* ";
int rows = 0;
int columns = 0;
for(int loop = 0; loop < 4; loop = loop + 1){
  for(int loop2 = 0; loop2 < 5; loop2 = loop2 + 1){
    print(maze[columns][rows] + ", ");
    rows++;
  }
  println("");
  columns++;
  rows=0;}
}
else{
  print("UH OH! The robot can't move there.");}
