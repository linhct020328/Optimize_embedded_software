#include <stdio.h>

int stringLength(char string[]){
  int i,length = 0;
  for (i = 0; string[i] !='\0'; i++) {
   length++;
  }
  return length;
}


void main() {
	char s1[] = "Em ten la Cao Thi Thuy Linh, lop CT2C";
	char s2[] = "Linh";

	int n = 0;
	int m = 0;
	int times = 0;

   while(s1[n] != '\0') {

      if(s1[n] == s2[m]) { 

         while(s1[n] == s2[m]  && s1[n] !='\0') {
            n++;
            m++;
         }

         if(m == stringLength(s2) && (s1[n] == ' ' || s1[n] == '\0')) {

            times++;
         }
      }else {  
         while(s1[n] != ' ') { 
            n++;
            if(s1[n] == '\0')
            break;
         }
      }
		
      n++;
      m=0; 
   }

   if(times > 0) {
      printf("Chuoi '%s' xuat hien %d lan\n", s2, times);
   }else {
      printf("Chuoi '%s' khong co mat trong cau.\n", s2);
   }
}
