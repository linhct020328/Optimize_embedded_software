#include <stdio.h>

int a, b, c, i, n;

int main() {
   n = 6;

   a = b = 1;
   printf("In day Fibonacci:\n");
   printf("%d %d ",a,b);

   for(i = 1; i <= n-2; i++) {
      c = a + b;
      printf("%d ", c);
      
      a = b;
      b = c;
   }
   
   return 0;
}
