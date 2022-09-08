#include<stdio.h>

int main(void)
{
	double x,A;

	printf("실수를 입력하시오:");
	scanf("%lf",&x);

	A=(3*x*x)+(7*x)+11;

	printf("다항식의 값은 %lf",A);
	return 0;
}

