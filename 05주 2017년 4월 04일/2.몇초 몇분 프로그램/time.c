#include<stdio.h>
#define SEC_PER_MINUTE 60

int main(void)
{
	int A,B,C;
	
	printf("초단위의 시간을 입력하시오:");
	scanf("%d",&A);

	B=A/SEC_PER_MINUTE;
    C=A%SEC_PER_MINUTE;

	printf("%d초는 %d분 %d초입니다.\n",A,B,C);
	return 0;
}