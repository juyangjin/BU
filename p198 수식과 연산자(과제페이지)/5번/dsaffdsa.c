#include<stdio.h>

int main(void)
{
	int A,B,C;

	printf("������ �Է��Ͻÿ�: ");
	scanf("%d",&A);

	B=A/10;
	C=A%10;

	printf("���� �ڸ�:%d\n���� �ڸ�:%d",B,C);
	return 0;
}