#include<stdio.h>

int main(void)
{
	int X,Y,Z,Q;

	printf("2개의 정수를 입력하시오: ");
	scanf("%d %d",&X,&Y);

Z=X/Y;
Q=X%Y;

printf("몫:%d 나머지:%d\n",Z,Q);
	return 0;
}

