#include<stdio.h>
#define SEC_PER_MINUTE 60

int main(void)
{
	int A,B,C;
	
	printf("�ʴ����� �ð��� �Է��Ͻÿ�:");
	scanf("%d",&A);

	B=A/SEC_PER_MINUTE;
    C=A%SEC_PER_MINUTE;

	printf("%d�ʴ� %d�� %d���Դϴ�.\n",A,B,C);
	return 0;
}