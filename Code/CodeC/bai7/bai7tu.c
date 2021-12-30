#include <stdio.h>

void cubeRoot(float n) {
   float i, precision = 0.000001;
   //float j = i*i*i;

   for(i = 1; (i*i*i) <= n; ++i);

   for(--i; (i*i*i) < n; i += precision);
   printf("%f",i);
}

void main() {
   float n = 125;

   printf("Can bac ba cua %f la: ", n);
   cubeRoot(n);
}
