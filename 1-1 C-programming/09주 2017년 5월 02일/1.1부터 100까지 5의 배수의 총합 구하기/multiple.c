#include<stdio.h>

int main(void)
{
	int i,n,sum;

	i=5;
	sum=0;
	
	while(i<=100)
	{
		sum+=i;
		i=i+5;
	}

    printf("1부터 100까지 중 5의 배수의 합은 %d입니다.",sum);

	return 0;
}
