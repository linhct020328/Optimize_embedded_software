#include<stdio.h>

#define MAX 30

int size, i, arr[MAX];
int *ptr;

int main() {
   ptr = &arr[0];

   printf("\nNhap kich co mang: ");
   scanf("%d", &size);

   printf("\n Nhap %d so nguyen vao trong mang: \n", size);
   for (i = 0; i < size; i++) {
      scanf("%d", ptr);
      ptr++;
   }

   ptr = &arr[size - 1];

   printf("\nHien thi cac phan tu mang theo chieu dao nguoc:");

   for (i = size - 1; i >= 0; i--) {
      printf("\nPhan tu %d la: %d ", i, *ptr);
      ptr--;
   }

   return(0);
}
