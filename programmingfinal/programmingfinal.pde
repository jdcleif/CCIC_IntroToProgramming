String[][] animation ={{" ", "O", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",}};
String[][] animation2 ={{" ", " ", " ",},
                       {" ", "O", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",}};
String[][] animation3 ={{" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", "O", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",}};
String[][] animation4 ={{" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", "O", " ",},
                       {" ", " ", " ",}};
String[][] animation5 ={{" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",},
                       {" ", " ", " ",},
                       {"\\", "O", "/",}};
int rows = 0;
int columns = 0;
for(int h = 0; h < 100; h++){
for(int loop = 0; loop < animation.length; loop = loop + 1){
  for(int loop2 = 0; loop2 < animation[0].length; loop2 = loop2 + 1){
    print(animation[columns][rows]);
    rows++;
  }
  println("");
  columns++;
  rows=0;
}
rows = 0;
columns=0;
delay(10);
println();
println();
println();
for(int loop = 0; loop < animation2.length; loop = loop + 1){
  for(int loop2 = 0; loop2 < animation2[0].length; loop2 = loop2 + 1){
    print(animation2[columns][rows]);
    rows++;
  }
  println("");
  columns++;
  rows=0;
}
rows = 0;
columns=0;
delay(10);
println();
println();
println();
for(int loop = 0; loop < animation3.length; loop = loop + 1){
  for(int loop2 = 0; loop2 < animation3[0].length; loop2 = loop2 + 1){
    print(animation3[columns][rows]);
    rows++;
  }
  println("");
  columns++;
  rows=0;
}
rows = 0;
columns=0;
delay(10);

println();
println();
println();

for(int loop = 0; loop < animation4.length; loop = loop + 1){
  for(int loop2 = 0; loop2 < animation4[0].length; loop2 = loop2 + 1){
    print(animation4[columns][rows]);
    rows++;
  }
  println("");
  columns++;
  rows=0;
}
rows = 0;
columns=0;
delay(10);
println();
println();
println();
for(int loop = 0; loop < animation5.length; loop = loop + 1){
  for(int loop2 = 0; loop2 < animation5[0].length; loop2 = loop2 + 1){
    print(animation5[columns][rows]);
    rows++;
  }
  println("");
  columns++;
  rows=0;
}
rows=0;
columns=0;
delay(10);
println();
println();
println();
}
