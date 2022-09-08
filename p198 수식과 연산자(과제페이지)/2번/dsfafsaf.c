#include<stdio.h>

int main(void)
{
	double A,B,C,D,E,F;
	
	printf("2개의 실수를 입력하시오: ");
	scanf("%lf %lf", &A, &B);

	C=A+B;
	D=A-B;
	E=A*B;
	F=A/B;
	
	printf("%lf %lf %lf %lf\n",C,D,E,F);
	return 0;
}
