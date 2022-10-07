int year = 1900;
if((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)){
  print("It is a leap year.");
}
else{
  print("It is not a leap year.");
}
