#include <stdio.h>

void main() {
   int i,j = 1;
   
   printf("In bang nhan:\n");
   
   for(i = 3; i <= 30; i+=3) {
      printf("%3d  x %2d  =  %3d\n", 3, j, i);
      j++;
   }
}
