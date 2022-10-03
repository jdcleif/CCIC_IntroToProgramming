int[] numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9};
int evens = 0;
int odds = 0;
int difference = 0;
for(int x = 0; x < numbers.length; x++){
  if(numbers[x]%2==0){
    evens=evens+numbers[x];}
    else{odds=odds+numbers[x];}
}
if(evens > odds){
  difference=evens-odds;
  print(difference);
}
else if(odds>evens){
  difference=odds-evens;
  print(difference);}
  else{
    print("0");}
