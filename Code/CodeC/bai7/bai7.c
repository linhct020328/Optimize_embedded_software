#include <stdio.h>

double i,n, precision = 0.000001;


double cubeRoot(double n) {
   
   for(i = 1; (i*i*i) <= n; ++i); 

   for(--i; (i*i*i) < n; i += precision);
   
   return i;
}

int main() {
   n = 125;

   printf("Can bac ba cua %lf = %lf", n, cubeRoot(n));

   return 0;
}
