#include<stdio.h>

int main()
{
	int N,I,mod,count;

	while(1)
	{
	mod=0,count=0;

	printf("���ڸ� �Է��Ͻÿ�:");
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
			printf("N�� �Ҽ��̴�.\n");
		}
		else
		{
			printf("N�� �Ҽ��� �ƴϴ�.\n");
		}
	}
	}
}		