int[][] matrix = {{2, 9, 0},
                  {1, 3, 5},
                  {2, 4, 7},
                  {8, 1, 5},
                };
int rows = 2;
int columns = 3;
for(int loop = 0; loop < 4; loop = loop + 1){
  for(int loop2 = 0; loop2 < 3; loop2 = loop2 + 1){
    print(matrix[columns][rows] + ", ");
    rows--;
  }
  println("");
  rows=2;
  columns--;
}
