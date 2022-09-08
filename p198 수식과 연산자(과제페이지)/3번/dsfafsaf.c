#include<stdio.h>

int main(void)
{
	int A,B,C,X,Y;

	printf("3개의 정수를 입력하시오: ");
	scanf("%d %d %d",&A,&B,&C);

	X=(A>B)?A:B;
	Y=(X>C)?X:C;

	printf("최대값:%d\n",Y);
	return 0;
}