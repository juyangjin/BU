#include<stdio.h>
#define SEC_PER_MINUTE 60

int main(void)
{
	int A,B,C,D,E;
	
	printf("초단위의 시간을 입력하시오:");
	scanf("%d",&A);

	D=A/(SEC_PER_MINUTE*60);
	E=A%(SEC_PER_MINUTE*60);
	B=E/SEC_PER_MINUTE;
    C=E%SEC_PER_MINUTE;
	

	printf("%d초는 %d시간 %d분 %d초입니다.\n",A,D,B,C);
	return 0;
}