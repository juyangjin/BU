#include <stdio.h>

int main(void)
{
	int x;
    int y;
	int z;
	int sum;
    int sum2;

	printf("실수를 입력하시오:");
	scanf("%d", &x);

	printf("실수를 입력하시오:");
	scanf("%d", &y);

	printf("실수를 입력하시오:");
	scanf("%d", &z);

	sum = x + y + z;
	printf("전체의 합:%d",sum);

	sum2= x+y+z/3;
	printf("평균값:%d",sum2);
	return 0;
}