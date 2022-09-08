#include<stdio.h>

int main(void)
{
	double A;

	printf("실수를 입력하시오:");
	scanf("%lf",&A);
	

	printf("실수형식으로는 %lf입니다.\n지수형식으로는 %e입니다\n",A,A);
	return 0;
}