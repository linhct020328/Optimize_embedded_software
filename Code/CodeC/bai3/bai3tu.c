#include <stdio.h>

void main() {
   int i,j; 
   printf("Ve tam giac sao deu:\n\n");
   for(i = 1; i <= 5; i++) {
      for(j = 1; j <= 5-i; j++)
         printf(" ");

      for(j = 1; j <= i; j++)
         printf("* ");

      printf("\n");
   }
}
