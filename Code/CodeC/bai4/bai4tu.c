#include <stdio.h>

void main() {
	int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
        int arr_size = sizeof(array)/sizeof(array[0]);
	int sum = 0, loop;
	float avg = 0;
   
   printf("Chuong trinh tinh gia tri trung binh cua mang: \n\n");
   for(loop = 0; loop < arr_size; loop++) {
      sum = sum + array[loop];
   }
   
   avg = (float)sum / loop;
   
   printf("Gia tri trung binh cua mang la: %.2f", avg);   
}
