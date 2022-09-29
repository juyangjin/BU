#include<stdio.h>

int main(void)
{
	int A,B,C;

    printf("키를 입력하시오:");
	scanf("%d",&A);

	printf("나이를 입력하시오:");
	scanf("%d",&B);

	if(A>=140&&B>=10)
		printf("타도 좋습니다.\n");
	else
		printf("죄송합니다.\n");
return 0;
}