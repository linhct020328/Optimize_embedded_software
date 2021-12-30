#include<stdio.h>
#include<string.h>

struct tennis {
   char pname[20];
   char tname[20];
   int avg;
} player[3], temp;

void main() {
  int i, j, n;
   for (i = 0; i < 3; i++) {
      printf("\nNhap ten nguoi choi: ");
      scanf("%s", &player[i].pname);
      printf("\nNhap ten truong: ");
      scanf("%s", &player[i].tname);
      printf("\nNhap diem so: ");
      scanf("%d", &player[i].avg);
      printf("\n");
   }
   n = 3;

   for (i = 1; i < n; i++)
      for (j = 0; j < n - i; j++) {
         if (strcmp(player[j].tname, player[j + 1].tname) > 0) {
            temp = player[j];
            player[j] = player[j + 1];
            player[j + 1] = temp;
         }
      }

   for (i = 0; i < n; i++) {
      printf("\n%s\t%s\t%d",player[i].pname,player[i].tname,player[i].avg);
   }
}
