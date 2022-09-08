#include<stdio.h>

int main(void)
{
	float mile;
	double meter;

	printf("마일을 입력하시오:");
    scanf("%f", &mile);

	meter = 1609.0*mile;

	printf("마일은 %lf입니다\n",meter);
	return 0;
}