#include<stdio.h>

int main(void)
{
	int X;
		printf("정수 입력=");
        scanf("%d",&X);
		if(X%5==0)
			printf("5의 배수입니다\n");
		else
		    printf("5의 배수가 아닙니다\n");
		return 0;
}