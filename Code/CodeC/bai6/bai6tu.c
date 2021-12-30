#include <stdio.h>

void main() {
   int a = 1, b = 1, c, i, n = 6;
   printf("In day Fibonacci:\n");
   printf("%d %d ",a,b);

   for(i = 1; i <= n-2; i++) {
      c = a + b;
      printf("%d ", c);
      
      a = b;
      b = c;
   }
}
