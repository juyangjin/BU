#include<stdio.h>

int main(void)
{
	int x , y, result;

	printf("두 개의 정수를 입력하시오:");
	scanf("%d%d",&x,&y);

	result = x + y;
	printf("%d+%d=%d\n",x,y,result);

	result = x - y;
	printf("%d-%d=%d\n",x,y,result);

	result = x * y;
	printf("%d+%d=%d\n",x,y,result);

    result = x / y;
	printf("%d/%d=%d\n",x,y,result);

    result = x % y;
	printf("%d%%d=%d\n",x,y,result);
	return 0;
}