#include <stdio.h>

int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
int sum, loop;
int arr_size = 10;
double avg;


int main() {

   sum = avg = 0;
   
   printf("Chuong trinh tinh gia tri trung binh cua mang: \n\n");
   for(loop = 0; loop < arr_size; loop++) {
      sum = sum + array[loop];
   }
   
   avg = (float)sum / loop;
   
   printf("Gia tri trung binh cua mang la: %.2f", avg);   
   
   return 0;
}
