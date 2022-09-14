#include<stdio.h>

int main()
{
	int N,I,mod,count;

	while(1)
	{
	mod=0,count=0;

	printf("숫자를 입력하시오:");
	scanf("%d",&N);

	if(N<0)
	{
		break;
	}
	else
	{
		for(I=1;I<=N;I++)
		{
			mod=N%I;

			if(mod==0)
				count++;
		}
		
		if(count==2)
		{
			printf("N은 소수이다.\n");
		}
		else
		{
			printf("N은 소수가 아니다.\n");
		}
	}
	}
}		