#include<stdio.h>

int main(void)
{
	int F;
	double C;

	printf("화씨값을 입력하시오:");
	scanf("%d",&F);

	C=(5.0/9.0)*(F-32.0);

	printf("섭씨값은 %lf입니다.\n");
	return 0;
}

