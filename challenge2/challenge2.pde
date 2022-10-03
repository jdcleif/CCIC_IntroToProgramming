int[][] matrix = {{2, 9, 0},
                  {1, 3, 5},
                  {2, 4, 7},
                  {8, 1, 5},
                };
int rows = 0;
int columns = 0;
for(int loop = 0; loop < 3; loop = loop + 1){
  for(int loop2 = 0; loop2 < 4; loop2 = loop2 + 1){
    print(matrix[columns][rows] + ", ");
    columns++;
  }
  println("");
  rows++;
  columns=0;
}
