#include<stdio.h>
#define SEC_PER_MINUTE 60

int main(void)
{
	int A,B,C,D,E;
	
	printf("�ʴ����� �ð��� �Է��Ͻÿ�:");
	scanf("%d",&A);

	D=A/(SEC_PER_MINUTE*60);
	E=A%(SEC_PER_MINUTE*60);
	B=E/SEC_PER_MINUTE;
    C=E%SEC_PER_MINUTE;
	

	printf("%d�ʴ� %d�ð� %d�� %d���Դϴ�.\n",A,D,B,C);
	return 0;
}