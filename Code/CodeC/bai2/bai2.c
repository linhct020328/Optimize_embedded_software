#include <stdio.h>

int i, j, n;

int main() {

   n = 3;
   j = 1;
   
   printf("In bang nhan:\n");
   
   for(i = n; i <= (n*10); i+=n) {
      printf("%3d  x %2d  =  %3d\n", n, j, i);
      j++;
   }

   return 0;
}
