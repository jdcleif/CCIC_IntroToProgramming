float[] numbers = {1, 20, 7, 8, 4, 9,};
float largest = 0;
int x = 0;
while(x < numbers.length){
  if(largest<numbers[x]){
    largest=numbers[x];}
    x++;
}
print(largest);
