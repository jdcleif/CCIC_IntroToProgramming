int[] binary = {1, 0, 0, 1, 1, 1, 1};
int sum = binary[0];
for(int x = 1; x < binary.length; x++){
  binary[x] = (binary[x-1]*2)+binary[x];
  sum = (binary[x-1] * 2) + 1;
}
print(sum);
