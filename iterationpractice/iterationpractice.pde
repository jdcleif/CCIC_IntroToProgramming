int x = 1000000;
for(int i = 1; i<= x; i = i +1){
  if(i % 3 == 0 && i % 5 == 0){
    println("FizzBuzz");
  }
    else if(i % 3 == 0){
      println("Fizz");
    }
    else if(i % 5 == 0){
      println("Buzz");
    }
    else{
      println("None");
    }}
   
