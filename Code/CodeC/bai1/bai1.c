#include <math.h>
#include <stdio.h>

double a,b,c,d;

int main()
{
    
    printf("Nhap vao 3 so a, b, c: ");
    scanf("%lf%lf%lf",&a,&b,&c);
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
            printf("Phuong trinh co nghiem duy nhat la: %lf",-c/b);
    }
    else
    {
        d=b*b-4*a*c;
        if (d<0)
            printf("Phuong trinh vo nghiem!!!");
        else if (d==0)
            printf("Phuong trinh co nghiem kep la: %lf",-b/(2*a));
        else
            printf("Phuong trinh co 2 nghiem phan biet la: %lf,%lf",(-b+sqrt(d))/(2*a),(-b-sqrt(d))/(2*a));    
    }    
  return 0;
}
