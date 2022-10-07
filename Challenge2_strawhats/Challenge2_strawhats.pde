int[] ages = {13, 12, 18, 15};
String rating = "R";
int maxage = 0;
int minimumage = ages[0];
for(int x = 0; x < ages.length; x++){
  if(maxage < ages[x]){
    maxage=ages[x];}
}
for(int y = 0; y < ages.length; y++){
  if(minimumage > ages[y]){
    minimumage=ages[y];}
}

if(rating == "G"){
  print("The group can see this movie.");
}
if(rating == "PG"){
  print("The group can see this movie.");
}
if(rating == "PG-13"){
  if(maxage >= 18 || minimumage >= 13){
    print("The group can see this movie.");}
    else{
      print("The group cannot see this movie.");}}
if(rating == "R"){
  if(maxage >= 18){
    print("The group can see this movie");}
    else{
      print("The group cannot see this movie");}
}
  
      
