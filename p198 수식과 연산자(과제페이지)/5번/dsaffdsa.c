#include<stdio.h>

int main(void)
{
	int A,B,C;

	printf("정수를 입력하시오: ");
	scanf("%d",&A);

	B=A/10;
	C=A%10;

	printf("십의 자리:%d\n일의 자리:%d",B,C);
	return 0;
}