#include <math.h>
#include <stdio.h>

void main()
{
    	float a,b,c;
   	printf("Nhap vao 3 so a, b, c: ");
    	scanf("%f%f%f",&a,&b,&c);

    	float ac = a*c, mau = a + a, z = 1/mau, delta = b*b - (ac + ac + ac + ac), x = -c/b, x1 = -b*z, x2 = (-b+sqrt(delta))*z, x3 = (-b-sqrt(delta))*z;

	if(a==0)
	{
		if(b==0)
		{
			if(c==0)
		            printf("Phuong trinh co vo so nghiem!");
		        else
		            printf("Phuong trinh vo nghiem!");
		    }
		else
		    printf("Phuong trinh co nghiem duy nhat la: %f",x);
	}
	else
	{
		if (delta<0)
			printf("Phuong trinh vo nghiem!!!");
		else if (delta==0)
			printf("Phuong trinh co nghiem kep la: %f",x1);
		else
			printf("Phuong trinh co 2 nghiem phan biet la: %f,%f",x2,x3);    
	}    
}
