#include<stdio.h>

int main(void)
{
	int A,B,C,X,Y;

	printf("3���� ������ �Է��Ͻÿ�: ");
	scanf("%d %d %d",&A,&B,&C);

	X=(A>B)?A:B;
	Y=(X>C)?X:C;

	printf("�ִ밪:%d\n",Y);
	return 0;
}